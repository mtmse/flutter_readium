import ReadiumNavigator

/// Keeps track of playback intent while AudioNavigator performs operations that
/// may temporarily pause the native player internally.
///
/// This class exists to distinguish:
/// - semantic pause: the user/app actually wants playback paused.
/// - transient native pause: AudioNavigator temporarily pauses while seeking,
///   skipping, or switching resources, then resumes playback.
///
/// During a transient operation, native `.paused` is normalized to `.loading`.
final class AudioPlaybackContinuityController {
  /// True when playback is expected to continue from the app/user perspective.
  private(set) var shouldResumePlayback = false

  /// True while native `.paused` events should be interpreted as transient and instead emit `.loading`.
  private var isMaskingTransientPause = false

  /// Incremented every time pause masking starts or ends, so delayed cleanup tasks
  /// cannot clear a newer masking window.
  private var pauseMaskingToken = 0

  /// Safety timeout that clears pause masking if no stable native state arrives.
  private var pauseMaskingTimeoutTask: Task<Void, Never>?

  /// Call when the user/app has requested playback.
  func markPlaybackRequested() {
    shouldResumePlayback = true
  }

  /// Call when the user/app has requested pause.
  func markPauseRequested() {
    shouldResumePlayback = false
    endMaskingTransientPause()
  }

  /// Call when playback reached the actual end of the publication.
  func markPlaybackEnded() {
    shouldResumePlayback = false
    endMaskingTransientPause()
  }

  /// Call during disposal or navigator teardown.
  func reset() {
    shouldResumePlayback = false
    endMaskingTransientPause()
  }

  /// Starts a short-lived window where native `.paused` can be treated as
  /// `.loading` if playback is expected to continue.
  ///
  /// Parameters:
  /// - shouldMaskPause: Whether the current player snapshot indicates that
  ///   playback is active or expected to continue.
  /// - timeout: Safety timeout for clearing the transient-operation flag.
  func beginMaskingTransientPause(
    shouldMaskPause: Bool,
    timeout: TimeInterval
  ) {
    guard shouldResumePlayback || shouldMaskPause else {
      return
    }

    isMaskingTransientPause = true
    pauseMaskingToken += 1

    let token = pauseMaskingToken
    let timeoutNanoseconds = UInt64(max(0.1, timeout) * 1_000_000_000)

    pauseMaskingTimeoutTask?.cancel()
    pauseMaskingTimeoutTask = Task { @MainActor [weak self] in
      try? await Task.sleep(nanoseconds: timeoutNanoseconds)

      // Prevent clearing the guard if a newer guard exists.
      guard let self, self.pauseMaskingToken == token else {
        return
      }

      self.isMaskingTransientPause = false
    }
  }

  /// Clears the transient pause guard.
  func endMaskingTransientPause() {
    isMaskingTransientPause = false
    pauseMaskingToken += 1
    pauseMaskingTimeoutTask?.cancel()
    pauseMaskingTimeoutTask = nil
  }

  /// Observes the native playback state and updates semantic playback intent.
  ///
  /// A native `.paused` while a transient operation is active does not clear
  /// playback intent. A native `.paused` outside such an operation is treated
  /// as a real pause.
  func observeNativePlaybackState(_ state: MediaPlaybackState) {
    switch state {
    case .playing:
      shouldResumePlayback = true
      endMaskingTransientPause()

    case .paused:
      if isMaskingTransientPause && shouldResumePlayback {
        return
      }

      shouldResumePlayback = false
      endMaskingTransientPause()

    case .loading:
      break
    }
  }

  /// Returns the state that should be exposed to Flutter.
  ///
  /// Native `.paused` is normalized to `.loading` only when it occurs during a
  /// transient operation and playback is expected to continue.
  func normalizedState(for state: MediaPlaybackState) -> MediaPlaybackState {
    guard state == .paused,
          shouldResumePlayback,
          isMaskingTransientPause
    else {
      return state
    }

    return .loading
  }
}
