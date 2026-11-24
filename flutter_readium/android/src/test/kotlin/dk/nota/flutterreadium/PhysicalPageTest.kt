package dk.nota.flutterreadium

import dk.nota.flutterreadium.models.FlutterMediaOverlay
import dk.nota.flutterreadium.models.FlutterMediaOverlayItem
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test
import org.junit.runner.RunWith
import org.readium.r2.shared.publication.Href
import org.readium.r2.shared.publication.Link
import org.readium.r2.shared.util.Url
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(manifest = Config.NONE, sdk = [28])
internal class PhysicalPageTest {
    private fun item(text: String) =
        FlutterMediaOverlayItem(
            audio = "audio.mp3#t=0,1",
            text = text,
            position = 1,
            tocHref = null,
            title = "",
            readingOrderItemDuration = 10.0,
        )

    private fun page(
        href: String,
        title: String?,
    ) = Link(Href(Url(href)!!), title = title)

    private val pageList =
        listOf(
            page("EPUB/one.xhtml#p21", "21"),
            page("EPUB/two.xhtml#p22", "22"),
            page("EPUB/two.xhtml#utan-titel", null),
        )

    private fun pages(vararg overlays: List<String>): List<String?> =
        overlays
            .map { texts -> FlutterMediaOverlay(texts.map(::item)) }
            .withPhysicalPages(pageList)
            .flatMap { it!!.items.map { item -> item.physicalPage } }

    @Test
    fun `items get the latest page break, also across resources`() {
        assertEquals(
            listOf(null, "21", "21", "21", "22", "22"),
            pages(
                listOf("EPUB/one.xhtml#forord", "EPUB/one.xhtml#p21", "EPUB/one.xhtml#a"),
                listOf("EPUB/two.xhtml#b", "EPUB/two.xhtml#p22", "EPUB/two.xhtml#c"),
            ),
        )
    }

    @Test
    fun `page break id must match the resource`() {
        assertEquals(listOf(null), pages(listOf("EPUB/two.xhtml#p21")))
    }

    @Test
    fun `page breaks without label keep the current page`() {
        assertEquals(
            listOf("22", "22"),
            pages(listOf("EPUB/two.xhtml#p22", "EPUB/two.xhtml#utan-titel")),
        )
    }

    @Test
    fun `audio locator carries the physical page`() {
        val locator = item("EPUB/one.xhtml#a").copy(physicalPage = "21").flutterAudioLocator!!
        assertEquals("21", locator.locations.otherLocations["physicalPage"])
        assertNull(item("EPUB/one.xhtml#a").flutterAudioLocator!!.locations.otherLocations["physicalPage"])
    }
}
