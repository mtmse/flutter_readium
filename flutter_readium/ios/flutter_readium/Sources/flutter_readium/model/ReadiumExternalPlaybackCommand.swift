import Foundation

public enum ExternalPlaybackCommandAction: String {
  case play
  case pause
  case togglePlayPause
  case seekForward
  case seekBackward
  case seekTo
  case next
  case previous
  case unknown
}

public class ReadiumExternalPlaybackCommand {
  var action: ExternalPlaybackCommandAction
  var position: TimeInterval?

  init(
    action: ExternalPlaybackCommandAction,
    position: TimeInterval? = nil
  ) {
    self.action = action
    self.position = position
  }

  func toJson() -> [String: Any] {
    var map: [String: Any] = [
      "action": action.rawValue
    ]

    if let position = position {
      map["position"] = Int(position * 1000)
    }

    return map
  }

  func toJsonString(pretty: Bool = false) -> String? {
    let options: JSONSerialization.WritingOptions = pretty ? [.prettyPrinted] : []
    guard let data = try? JSONSerialization.data(withJSONObject: toJson(), options: options) else { return nil }
    return String(data: data, encoding: .utf8)
  }
}
