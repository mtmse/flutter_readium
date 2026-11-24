**Narration locators now include the current physical page on Android and iOS.**
Audio locators from synchronized narration carry `physicalPage` in their locations: the label
of the latest `pageList` entry at or before the narrated text, e.g. `"42"` or `"iv"`. Read it
with `locator.locations?.physicalPage`. It is absent when the publication has no page list.
