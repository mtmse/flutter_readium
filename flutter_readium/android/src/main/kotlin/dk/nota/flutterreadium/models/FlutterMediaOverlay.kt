package dk.nota.flutterreadium.models

import android.os.Parcelable
import dk.nota.flutterreadium.PluginLog
import dk.nota.flutterreadium.getTextId
import dk.nota.flutterreadium.progression
import dk.nota.flutterreadium.toSeconds
import kotlinx.parcelize.Parcelize
import org.json.JSONArray
import org.json.JSONObject
import org.readium.r2.navigator.extensions.time
import org.readium.r2.shared.InternalReadiumApi
import org.readium.r2.shared.publication.Locator
import org.readium.r2.shared.util.Url
import kotlin.time.Duration

private const val TAG = "FlutterMediaOverlay"

/**
 * Simple media overlay mapping.
 */
@Parcelize
data class FlutterMediaOverlay(
    val items: List<FlutterMediaOverlayItem>,
) : Parcelable {
    /**
     * The total duration of the audio, based on the end time of the last item.
     */
    val duration
        get() = items.lastOrNull()?.audioEnd ?: 0.0

    /**
     * Find the media overlay item for the given file and time.
     * Returns null if no item is found.
     */
    fun findItemInRange(
        fileHref: Url,
        time: Double,
    ): FlutterMediaOverlayItem? = findItemInRange(fileHref.toString(), time)

    /**
     * Find the media overlay item for the given file and time.
     * Returns null if no item is found.
     */
    fun findItemInRange(
        fileHref: Url,
        time: Duration,
    ): FlutterMediaOverlayItem? = findItemInRange(fileHref, time.toSeconds)

    /**
     * Find the media overlay item for the given file and time.
     * Returns null if no item is found.
     */
    fun findItemInRange(
        fileHref: String,
        duration: Duration,
    ): FlutterMediaOverlayItem? = findItemInRange(fileHref, duration.toSeconds)

    /**
     * Find the media overlay item for the given file and time.
     * Returns null if no item is found.
     */
    fun findItemInRange(
        fileHref: String,
        time: Double,
    ): FlutterMediaOverlayItem? {
        val href = Url.invoke(fileHref) ?: return null

        return items.firstOrNull { item -> item.isInRange(href, time) }
    }

    /**
     * Find the media overlay item from the text reference.
     */
    fun findItemFromTextId(
        href: Url,
        textId: String,
    ): FlutterMediaOverlayItem? {
        return items.firstOrNull { item ->
            item.textId == textId && href.isEquivalent(Url.invoke(item.textFile))
        }
    }

    /**
     * Find the first media overlay item assigned to the given ToC text reference.
     */
    fun findItemFromTocHref(
        href: Url,
        textId: String,
    ): FlutterMediaOverlayItem? {
        return items.firstOrNull { item ->
            val tocHref = item.tocHref ?: return@firstOrNull false
            tocHref.fragment == textId && href.isEquivalent(tocHref.removeFragment())
        }
    }

    /**
     * Find the media overlay item from the given locator.
     * A locator can either be an audio+time based locator or a text+id based locator.
     * This allows us to map back and forth between audio and text.
     */
    @OptIn(InternalReadiumApi::class)
    fun findItemFromLocator(locator: Locator): FlutterMediaOverlayItem? {
        val href = locator.href

        locator.locations.time?.let { timeOffset ->
            return findItemInRange(href, timeOffset)
        }

        locator.getTextId()?.let { textId ->
            val exactItem = findItemFromTextId(href, textId)
            if (exactItem != null) return exactItem
            return findItemFromTocHref(href, textId)
        }

        locator.progression?.let { progression ->
            val item = items.firstOrNull { item -> item.isInProgression(href, progression) }

            // FIXME: This item?skipToAudioLocator will have an incorrect time value, since it is the original audioStart and not calculated from progression.
            return item
        }

        if (locator.locations.fragments.isEmpty() && locator.mediaType.isHtml) {
            // If there is no fragment, and it is a HTML locator, we return the first item for the href
            PluginLog.d(
                TAG,
                "::findItemFromLocator - no fragment in locator of type HTML, returning first item for href=${href.path}",
            )
            return items.firstOrNull { item ->
                item.textFile == href.path
            }
        }

        PluginLog.d(
            TAG,
            "::findItemFromLocator - no time or textId in locator, cannot find item for locator=$locator",
        )

        return null
    }

    companion object {
        /**
         * Creates a flat media overlay from sync narration JSON.
         *
         * [tocHrefs] is used while flattening to attach the closest matching structural ToC ref to
         * each concrete media overlay item.
         */
        fun fromJson(
            json: JSONObject,
            position: Int,
            tocHref: Url?,
            title: String,
            readiumOrderItemDuration: Double,
            tocHrefs: List<Url> = emptyList(),
        ): FlutterMediaOverlay? {
            val topNarration = json.opt("narration") as? JSONArray ?: return null
            val items =
                topNarration.flatMapJsonObjects { itemJson ->
                    itemJson.toItems(
                        position,
                        tocHref,
                        title,
                        readiumOrderItemDuration,
                        tocHrefs,
                    )
                }

            return FlutterMediaOverlay(items)
        }
    }
}

/**
 * Flattens sync narration into concrete media overlay items while preserving the closest matching
 * structural ToC reference on [FlutterMediaOverlayItem.tocHref].
 */
private fun JSONObject.toItems(
    position: Int,
    inheritedTocHref: Url?,
    title: String,
    readiumOrderItemDuration: Double,
    tocHrefs: List<Url>,
): List<FlutterMediaOverlayItem> {
    val nodeTocHref = optString("text").matchingTocHref(tocHrefs) ?: inheritedTocHref
    val item =
        FlutterMediaOverlayItem.fromJson(
            this,
            position,
            nodeTocHref,
            title,
            readiumOrderItemDuration,
        )
    val children =
        (opt("narration") as? JSONArray)
            ?.flatMapJsonObjects { childJson ->
                childJson.toItems(
                    position,
                    nodeTocHref,
                    title,
                    readiumOrderItemDuration,
                    tocHrefs,
                )
            }.orEmpty()

    return listOfNotNull(item) + children
}

private fun String.matchingTocHref(tocHrefs: List<Url>): Url? {
    val href = Url.invoke(this) ?: return null
    return tocHrefs.firstOrNull { it.isEquivalent(href) }
}

private inline fun <T> JSONArray.flatMapJsonObjects(transform: (JSONObject) -> List<T>): List<T> =
    buildList {
        for (i in 0 until length()) {
            addAll(transform(getJSONObject(i)))
        }
    }
