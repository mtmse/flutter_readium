import Combine
import Foundation
import MediaPlayer
import ReadiumShared
import ReadiumNavigator

public class FlutterAudioNavigator: FlutterTimebasedNavigator, AudioNavigatorDelegate
{
  internal var _publication: Publication
  internal var _initialLocator: Locator?
  internal var _preferences: FlutterAudioPreferences
  internal var _lastTimebasedPlayerState: ReadiumTimebasedState?
  internal var _nowPlayingUpdater: NowPlayingInfoUpdater
  @MainActor internal var _audioNavigator: AudioNavigator?
  
  /// True when playback is expected to continue from the app/user perspective.
  private var _playbackShouldContinue = false
  /// True while `_audioNavigator` is performing an operation that can cause a transient
  /// native pause, such as seek, skip, locator navigation, or resource transition.
  private var _transientPlaybackOperation = false
  /// Delayed cleanup task for the transient-operation guard.
  private var _transientPlaybackOperationClearTask: Task<Void, Never>?
  /// Token used to invalidate stale delayed cleanup tasks.
  private var _transientPlaybackOperationToken = 0

  internal var subscriptions: Set<AnyCancellable> = []

  @Published var cover: UIImage?
  @Published var playback: MediaPlaybackInfo = .init()
  @Published var audioLocator: Locator?

  public var publication: Publication {
    get {
      return self._publication
    }
  }
  public var initialLocator: Locator? {
    get {
      return self._initialLocator
    }
  }
  public var currentLocator: Locator? {
    get {
      return self.audioLocator
    }
  }

  public var listener: (any TimebasedListener)?

  public init(publication: Publication, preferences: FlutterAudioPreferences, initialLocator: Locator?) {
    self._publication = publication
    self._preferences = preferences
    self._nowPlayingUpdater = NowPlayingInfoUpdater(
      withPublication: publication,
      infoType: preferences.controlPanelInfoType
    )
    self._initialLocator = resolveLocator(initialLocator)
  }

  public func initNavigator() async -> Void {
    _audioNavigator = AudioNavigator(
      publication: publication,
      initialLocation: initialLocator,
      config: AudioNavigator.Configuration(
        preferences: AudioPreferences(fromFlutterPrefs: _preferences),
        playbackRefreshInterval: _preferences.updateIntervalSecs,
      )
    )
    _audioNavigator?.delegate = self

    self.setupNavigatorStateListeners()

    Task {
      cover = try? await publication.cover().get()
    }
  }

  private func setupNavigatorStateListeners() {
    /// Subscribe to changes
    $playback
      .throttle(for: .seconds(self._preferences.updateIntervalSecs), scheduler: RunLoop.main, latest: true)
      .sink { [weak self] info in
        guard let self = self else {
          return
        }
        Log.navigator.debug("$playback updated: state=\(info.state),index=\(info.resourceIndex),time=\(info.time),progress=\(info.progress)")

        self.submitTimebasedPlayerStateToListener(info: info, location: _audioNavigator?.currentLocation)
      }
      .store(in: &subscriptions)
  }

  public func dispose() -> Void {
    self._playbackShouldContinue = false
    endTransientPlaybackOperation()
    
    if (self._audioNavigator != nil) {
      self._audioNavigator?.pause()
      self._audioNavigator?.delegate = nil
      self._audioNavigator = nil
      self.listener?.timebasedNavigator(self, didChangeState: .init(state: .none))
    }
    self.listener = nil
    self.subscriptions.forEach { $0.cancel() }
    _nowPlayingUpdater.clearNowPlaying()
  }

  public func play(fromLocator: Locator?) async -> Void {
    _playbackShouldContinue = true

    if let locator = resolveLocator(fromLocator) {
      beginTransientPlaybackOperation()
      let _ = await seek(toLocator: locator)
    } else if _audioNavigator?.currentLocation == nil {
      // Initial play may internally call go(to:), which pauses.
      beginTransientPlaybackOperation()
    }
    _audioNavigator?.play()
    _nowPlayingUpdater.setupNowPlayingInfo()
    _nowPlayingUpdater.setupCommandCenterControls(
      preferredIntervals: [_preferences.seekInterval],
      seekToEnabled: _preferences.allowExternalSeeking,
      timebasedNavigator: self
    )
  }

  public func pause() async -> Void {
    _playbackShouldContinue = false
    endTransientPlaybackOperation()
    
    _audioNavigator?.pause()
  }

  public func resume() async -> Void {
    _playbackShouldContinue = true
    if _audioNavigator?.currentLocation == nil {
      // Initial play may internally call go(to:), which pauses.
      beginTransientPlaybackOperation()
    }
    
    _audioNavigator?.play()
  }

  public func togglePlayPause() async -> Void {
    if (playback.state == .playing) {
      await pause()
    } else {
      await resume()
    }
  }

  public func seekForward() async -> Bool {
    await seekRelative(byOffsetSeconds: self._preferences.seekInterval)
  }

  public func seekBackward() async -> Bool {
    await seekRelative(byOffsetSeconds: -1 * self._preferences.seekInterval)
  }

  public func seek(toLocator: Locator) async -> Bool {
    guard let resolvedLocator = resolveLocator(toLocator) else {
      Log.navigator.warn("Could not resolve Locator: \(toLocator)")
      return false
    }
    beginTransientPlaybackOperation()
    let wasPlaying = _audioNavigator?.state == .playing || _audioNavigator?.state == .loading
    let navigated = await _audioNavigator?.go(to: resolvedLocator) ?? false
    if (wasPlaying && navigated) {
      _audioNavigator?.play()
    }
    if !navigated {
      endTransientPlaybackOperation()
    }
    return navigated
  }

  public func seek(toProgression: Double) async -> Bool {
    if let locator = audioLocator,
       let timeOffset = getTimeOffsetForLocatorWithProgression(locator: locator, progression: toProgression) {
      /// Modify time offset  of current Locator to match desired progression.
      return await self.seek(toOffset: timeOffset)
    }
    return false
  }

  private func getTimeOffsetForLocatorWithProgression(locator: Locator, progression: Double) -> Double? {
    guard let locator = audioLocator,
          let link = publication.readingOrder.firstWithHREF(locator.href),
          let duration = link.duration, duration.isFinite else {
      return nil
    }
    return duration * progression
  }

  public func seek(toOffset: Double) async -> Bool {
    beginTransientPlaybackOperation()
    let wasPlaying = _audioNavigator?.state == .playing || _audioNavigator?.state == .loading
    await _audioNavigator?.seek(to: toOffset)
    if (wasPlaying) {
      _audioNavigator?.play()
    }
    return true
  }

  public func seekRelative(byOffsetSeconds: Double) async -> Bool {
    if !_preferences.continuousSeeking {
      beginTransientPlaybackOperation()
      await _audioNavigator?.seek(by: byOffsetSeconds)
      return true
    }
    
    if byOffsetSeconds < 0 {
      return await rewindBy(seconds: abs(byOffsetSeconds))
    } else {
      return await fastForwardBy(seconds: byOffsetSeconds)
    }
  }

  private func rewindBy(seconds rewindSeconds: TimeInterval) async -> Bool {
    guard let audioNavigator = _audioNavigator else {
      return false
    }

    let info = audioNavigator.playbackInfo
    let currentIndex = info.resourceIndex

    let durations = audioDurations(
      currentIndex: currentIndex,
      currentDuration: info.duration
    )

    guard let target = AudioSeekPolicy.resolveRewindTarget(
      currentIndex: currentIndex,
      currentOffsetSeconds: info.time,
      rewindSeconds: rewindSeconds,
      durations: durations
    ) else {
      return false
    }
    
    return await seek(
      to: target,
      currentIndex: currentIndex,
      currentLocator: audioNavigator.currentLocation
    )
  }
  
  private func fastForwardBy(seconds fastForwardSeconds: TimeInterval) async -> Bool {
    guard let audioNavigator = _audioNavigator else {
      return false
    }
    
    let info = audioNavigator.playbackInfo
    let currentIndex = info.resourceIndex
    
    let durations = audioDurations(
      currentIndex: currentIndex,
      currentDuration: info.duration
    )
    
    guard let target = AudioSeekPolicy.resolveFastForwardTarget(
      currentIndex: currentIndex,
      currentOffsetSeconds: info.time,
      fastForwardSeconds: fastForwardSeconds,
      durations: durations
    ) else {
      return false
    }
    
    return await seek(
      to: target,
      currentIndex: currentIndex,
      currentLocator: audioNavigator.currentLocation
    )
  }
  
  private func audioDurations(
    currentIndex: Int,
    currentDuration: TimeInterval?
  ) -> [TimeInterval?] {
    var durations: [TimeInterval?] = publication.readingOrder.map { link in
      link.duration
    }
    
    if durations.indices.contains(currentIndex), durations[currentIndex] == nil {
      durations[currentIndex] = currentDuration
    }
    
    return durations
  }
  
  private func seek(
    to target: AudioSeekPolicy.Target,
    currentIndex: Int,
    currentLocator: Locator?
  ) async -> Bool {
    if target.readingOrderIndex == currentIndex {
      return await seek(toOffset: target.offsetSeconds)
    }
    
    guard let currentLocator else {
      return false
    }
    
    guard let targetLocator = makeAudioLocator(
      from: currentLocator,
      target: target
    ) else {
      return false
    }
    
    return await seek(toLocator: targetLocator)
  }

  private func makeAudioLocator(
    from currentLocator: Locator,
    target: AudioSeekPolicy.Target
  ) -> Locator? {
    guard publication.readingOrder.indices.contains(target.readingOrderIndex) else {
      return nil
    }

    let link = publication.readingOrder[target.readingOrderIndex]

    var locator = currentLocator.copy(href: link.url())

    locator.locations.position = target.readingOrderIndex + 1
    locator.locations.progression = nil
    locator.locations.totalProgression = nil
    locator.locations.otherLocations.removeValue(forKey: "tocHref")
    locator.locations.otherLocations.removeValue(forKey: "tocId")

    locator = locator.copyWithOffset(target.offsetSeconds)

    return locator
  }

  // MARK: AudioNavigatorDelegate

  /// Called when the playback updates.
  public func navigator(_ navigator: AudioNavigator, playbackDidChange info: MediaPlaybackInfo) {
    switch info.state {
      case .playing:
        _playbackShouldContinue = true
        endTransientPlaybackOperation()
      case .paused:
        if !_playbackShouldContinue {
          endTransientPlaybackOperation()
        }
      case .loading:
        break
    }
    
    self._nowPlayingUpdater.updatePlaybackFromInfo(info, withSpeedSetting: _audioNavigator?.settings.speed)
    self._nowPlayingUpdater.updateCommandCenterControls()
    self.playback = info
  }

  public func navigator(_ navigator: Navigator, locationDidChange locator: Locator) {
    self.audioLocator = locator
    // Submit new locator to the listener
    self.submitAudioLocatorReachedToListener(locator)

    if let info = _audioNavigator?.playbackInfo {
      self.submitTimebasedPlayerStateToListener(info: info, location: locator)
    }
  }

  /// Called when the ranges of buffered media data change.
  /// Warning: They may be discontinuous.
  public func navigator(_ navigator: AudioNavigator, loadedTimeRangesDidChange ranges: [Range<Double>]) {
    // Simplified buffer range to TimeInterval, by just taking highest upper bound.
    // May be too optimistic if ranges are discontinuous.
    let highestUpperBound: TimeInterval = ranges.map(\.upperBound).max() ?? 0

    if let info = _audioNavigator?.playbackInfo,
       let location = _audioNavigator?.currentLocation {
      self.submitTimebasedPlayerStateToListener(info: info, location: location, bufferedInterval: highestUpperBound)
    }
  }

  /// Called when the navigator finished playing the current resource.
  /// Returns whether the next resource should be played. Default is true.
  public func navigator(_ navigator: AudioNavigator, shouldPlayNextResource info: MediaPlaybackInfo) -> Bool {
    let hasNextResource = info.resourceIndex + 1 < publication.readingOrder.count
    if hasNextResource && _playbackShouldContinue {
      beginTransientPlaybackOperation()
    }
    return true
  }

  public func navigator(_ navigator: any ReadiumNavigator.Navigator, presentError error: ReadiumNavigator.NavigatorError) {
    Log.navigator.error("Should present error: \(error)")
    // TODO: LCP related errors, ignored until supporting LCP.
  }

  public func navigator(_ navigator: any ReadiumNavigator.Navigator, didFailToLoadResourceAt href: ReadiumShared.RelativeURL, withError error: ReadiumShared.ReadError) {
    self.listener?.timebasedNavigator(self, encounteredError: error, withDescription: "DidFailToLoadResourceAt: \(href)")
  }

  // MARK: AudioNavigator specific API

  @MainActor
  func setAudioPreferences(_ preferences: FlutterAudioPreferences) {
    self._preferences = preferences
    /// Update the Audio Navigator.
    self._audioNavigator?.submitPreferences(AudioPreferences(fromFlutterPrefs: preferences))
    /// Update the CommandCenter controls.
    self._nowPlayingUpdater.setupCommandCenterControls(
      preferredIntervals: [_preferences.seekInterval],
      seekToEnabled: _preferences.allowExternalSeeking,
      timebasedNavigator: self
    )
  }

  var canGoBackward: Bool {
    self._audioNavigator?.canGoBackward ?? false
  }

  var canGoForward: Bool {
    self._audioNavigator?.canGoForward ?? false
  }

  @MainActor
  public func skipForward() async -> Bool {
    if _audioNavigator?.canGoForward != true {
      return false
    }
    beginTransientPlaybackOperation()
    let didSkip = await _audioNavigator?.goForward() ?? false
    if !didSkip {
      endTransientPlaybackOperation()
    }
    return didSkip
  }

  @MainActor
  public func skipBackward() async -> Bool {
    if _audioNavigator?.canGoBackward != true {
      return false
    }
    beginTransientPlaybackOperation()
    let didSkip = await _audioNavigator?.goBackward() ?? false
    if !didSkip {
      endTransientPlaybackOperation()
    }
    return didSkip
  }

  @MainActor
  public func decorationsUpdated() -> Void {
    // No decorations for AudioNavigator
  }

  // MARK: Internal AudioNavigator API

  internal func submitAudioLocatorReachedToListener(_ locator: Locator) {
    var locator = locator
    if locator.locations.position == nil,
       let navigator = self._audioNavigator {
      locator.locations.position = navigator.playbackInfo.resourceIndex + 1
    }
    self.listener?.timebasedNavigator(self, reachedLocator: locator, segmentDuration: nil)
  }

  internal func submitTimebasedPlayerStateToListener(info: MediaPlaybackInfo, location: Locator?, bufferedInterval: TimeInterval? = nil) {

    /// Create TimebasedState and send it over the timebased-state stream.
    let timebasedState = mapToTimebasedState(info: info, location: location, bufferedInterval: bufferedInterval)
    
    if timebasedState.state == .ended {
      _playbackShouldContinue = false
      endTransientPlaybackOperation()
    }

    // If state has changed, submit it to listener.
    if (timebasedState != self._lastTimebasedPlayerState) {
      self._lastTimebasedPlayerState = timebasedState
      self.listener?.timebasedNavigator(self, didChangeState: timebasedState)
    } else {
      Log.navigator.debug("Skipped state emission - duplicate")
    }
  }

  internal func resolveLocator(_ locator: Locator?) -> Locator? {
    guard let locator = locator else {
      return nil
    }
    var resolvedLocator = locator
    /// Fix href if not in readingOrder, by using position.
    let readingOrderContainsHref = publication.readingOrder.contains(where: { $0.href == locator.href.string.removingPrefix("/") })
    if readingOrderContainsHref == false,
       let position = locator.locations.position {
      resolvedLocator = locator.copy(href: publication.readingOrder[position - 1].url())
    }
    /// Set time offset fragment from progression
    var timeOffset = locator.timeOffset
    /// Progression is resolved to a time fragment here, as this resolution is unique to AudioNavigator.
    // TODO: This should really be handled by the Readium Navigator (upstream issue).
    if let progression = locator.locations.progression, progression.isFinite,
       let preciseTimeOffset = getTimeOffsetForLocatorWithProgression(locator: locator, progression: progression) {
        timeOffset = preciseTimeOffset
    }
    resolvedLocator = resolvedLocator.copyWithOffset(timeOffset ?? 0.0)
    return resolvedLocator
  }

  internal func mapToTimebasedState(info: MediaPlaybackInfo, location: Locator?, bufferedInterval: TimeInterval? = nil) -> ReadiumTimebasedState {
    var locator = location
    
    /// Enrich Locator with position before submitting to listeners.
    if locator != nil {
      locator?.locations.position = info.resourceIndex + 1
      /// Ensure timeOffset is rounded to 2 decimals
      locator = locator?.toClientFriendlyLocator()
    }
    
    /// Fetch MediaPlaybackState and convert it to TimebasedState
    var playerState = info.state.asTimebasedState
    if (info.state == .paused && info.progress >= 1.0 && info.resourceIndex == self.publication.manifest.readingOrder.count - 1) {
      /// If paused at progress 1 of the last resource in readingOrder, we can assume the book has ended.
      playerState = .ended
      /// FIX: totalProgression will be very close to 1.0, but not always exactly there, so we have to force it.
      locator?.locations.totalProgression = 1.0
    } else if (info.state == .paused && _transientPlaybackOperation && _playbackShouldContinue) {
      Log.navigator.debug("Mapping transient AudioNavigator pause to loading")
      playerState = .loading
    }

    /// Create TimebasedState and send it over the timebased-state stream.
    let timebasedState = ReadiumTimebasedState(
      state: playerState,
      currentOffset: info.time,
      currentBuffered: bufferedInterval,
      currentDuration: info.duration ?? nil,
      currentLocator: locator
    )
    return timebasedState
  }
  
  /// Starts a short-lived guard around playback operations that are expected to
  /// continue playback but may temporarily pause the native player internally.
  ///
  /// If playback is currently intended to continue, this method marks the operation
  /// as transient. The guard is cleared automatically after a timeout to avoid getting
  /// stuck if the native player never reports a stable state.
  private func beginTransientPlaybackOperation() {
    let nativeState = _audioNavigator?.state
    let shouldMaskPause =
      _playbackShouldContinue ||
      nativeState == .playing ||
      nativeState == .loading ||
      playback.state == .playing ||
      playback.state == .loading
    
    guard shouldMaskPause else {
      return
    }
    
    _transientPlaybackOperation = true
    _transientPlaybackOperationToken += 1
    let token = _transientPlaybackOperationToken
    
    // Must be longer than the throttled playback stream, otherwise a delayed
    // native `.paused` may leak after the guard is cleared.
    let timeout = UInt64(max(2.0, _preferences.updateIntervalSecs * 4.0) * 1_000_000_000)
    
    _transientPlaybackOperationClearTask?.cancel()
    _transientPlaybackOperationClearTask = Task { @MainActor [weak self] in
      try? await Task.sleep(nanoseconds: timeout)
      
      // Prevent clearing the guard if a newer guard exists.
      guard let self, self._transientPlaybackOperationToken == token else {
        return
      }
      
      self._transientPlaybackOperation = false
    }
  }
  
  /// Clears the transient-operation guard and cancels any pending timeout.
  ///
  /// Call this when playback reaches a stable semantic state, for example native
  /// `.playing`, a real user/app pause, end-of-book, disposal, or failed navigation.
  private func endTransientPlaybackOperation() {
    _transientPlaybackOperation = false
    _transientPlaybackOperationToken += 1
    _transientPlaybackOperationClearTask?.cancel()
    _transientPlaybackOperationClearTask = nil
  }
}
