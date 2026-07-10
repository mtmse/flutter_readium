package dk.nota.flutterreadium.events

import dk.nota.flutterreadium.PluginLog
import io.flutter.plugin.common.BinaryMessenger
import kotlinx.coroutines.launch
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

/**
 * Event channel for playback commands received from system media controls.
 */
class ReadiumExternalPlaybackCommandEventChannel(
    messenger: BinaryMessenger,
) : EventChannelWrapper<ReadiumExternalPlaybackCommand>(messenger, "dk.nota.flutter_readium/external-playback-command") {
    override fun sendEvent(data: ReadiumExternalPlaybackCommand) {
        launch {
            PluginLog.d("ReadiumExternalPlaybackCommand", "::sendEvent $data")
            eventSink?.success(Json.encodeToString(data))
        }
    }
}

@Serializable
data class ReadiumExternalPlaybackCommand(
    val action: ExternalPlaybackCommandAction,
    /**
     * Requested absolute playback position, in milliseconds, for seek-to commands.
     */
    val position: Long? = null,
)

@Serializable
enum class ExternalPlaybackCommandAction {
    @SerialName("play")
    Play,

    @SerialName("pause")
    Pause,

    @SerialName("togglePlayPause")
    TogglePlayPause,

    @SerialName("seekForward")
    SeekForward,

    @SerialName("seekBackward")
    SeekBackward,

    @SerialName("seekTo")
    SeekTo,

    @SerialName("next")
    Next,

    @SerialName("previous")
    Previous,

    @SerialName("unknown")
    Unknown,
}
