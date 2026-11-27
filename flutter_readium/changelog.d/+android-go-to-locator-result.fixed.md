**Android: `goToLocator` returns `false` when navigation fails.**
It previously always returned `true`, even when synchronized narration had no audio for
the target text anchor and playback stayed where it was. The result now matches iOS, so
callers can detect a failed jump.
