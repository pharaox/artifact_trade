# Changelog

## Version 0.4.1

### Character Interactions

* Rebalanced impact of QWA difference, equipped, and durability on AI buy and sell decisions
* Improved wealth considerations for the AI when buying and selling artifacts
* Improved artifact base price calculation

### Bug Fixes

* Fixed court artifacts being considered equippable by characters not having a royal court

## Version 0.4.0

### Compatibility

* Adapted to CK3 1.9
  * Adapted changes to Inventory window
  * Added 7 additional Modifier filter options for newly introduced artifact modifiers
  * Reworked artifact base prices to better match vanilla destroy prices
  * Worked around a major bug in `can_equip_artifact` by introducing own trigger

### Character Interactions

* Disabled artifact trading for Aniconist rulers to prevent them from gaining piety for nothing
* Added wealth considerations for the AI when buying and selling artifacts to match similar considerations when destroying them

### Bug Fixes

* Fixed a rare error caused by trying to use a hook without a usable hook

### Housekeeping

* Added `at_on_artifact_destroyed` on action to monitor artifact destructions

## Version 0.3.0

### UI Improvements

* Added Modifier filter
* Added Trash filter
* Added negative filter options to Rarity and Type filters

## Version 0.2.0

### UI Improvements

* Improved UI performance by limiting the max number of listed artifacts and ensuring that the artifacts list is not visible while the artifacts are being collected

## Version 0.1.1

* Fixed Artifact Finder scrollbox to fit the window in all screen resolutions

## Version 0.1.0

* Initial version
