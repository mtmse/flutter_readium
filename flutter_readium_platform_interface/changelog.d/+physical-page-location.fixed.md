**`Locations.physicalPage` now reads the page sent by the native readers.**
Android and iOS send the physical page as a `physicalPage` location, but the getter only read
a `physicalPage=` fragment, so it returned null. The fragment is still used as fallback.
