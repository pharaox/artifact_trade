# Changelog

## Version 0.11.1

### Decisions

* If "Visit Holding" decision improvements are disabled, visiting a holding no longer requires an additional click.

### Game Rules

* Added the "Craftsmen Availability" game rule to allow configuring the holding types and development levels required for craftsmen to be available.

## Version 0.11.0

### Decisions

* Added a new "Buy & Sell Artifacts" event chain to the "Visit Holding" decision for landless adventurers to improve upon vanilla's artifact trading features.
  * Artifact prices are consistent and based on the criteria used by the mod.
  * Adventurers and peddlers can only buy artifacts if they can afford them.
  * Artifacts can be bought in all holding types above certain development level, and their quality and wealth (and therefore rarity and price) depend on that level as well.
  * Artifacts sold by merchants are still better on average, but in a more balanced way. They will be destroyed or replaced after some time if not bought.
  * AI landless adventurers will regularly buy and sell artifacts as well.

### Character Interactions

* Interactions and events now show a detailed breakdown of the artifact price.
* Tribal rulers will now both offer and demand lower prices to reflect their scarcity of gold.
* AI landless adventurers are now somewhat more willing to trade artifacts via interactions. In addition, craftsmen are much more willing to sell, and peddlers are much more willing to both buy and sell.
* AI rulers will now target more interaction recipients, including craftsmen and peddlers.

### Game Rules

* Added the "Visit Holding Improvements" game rule to enable or disable the "Visit Holding" decision changes.
* Added the "Buy / Sell Artifacts Range" game rule to reduce the range these interactions use to look for characters for better performance.

### UI Improvements

* Newly introduced artifact types after 1.8 (rings, feathers, etc.) will now be properly used when sorting artifacts by type in the UI.

### Bug Fixes

* Fixed a [vanilla issue](https://forum.paradoxplaza.com/forum/threads/ai-landless-adventurers-are-not-visiting-settlements-if-you-switch-to-any-of-them-you-cant-as-well.1712826/) that prevents AI landless adventurers from visiting holdings.
* Fixed some minor issues showing up as runtime errors.

### Miscellaneous

* Enhanced debug logging when buying, selling, and destroying artifacts.

## Version 0.10.4

### Compatibility

* Adapted to CK3 1.13.1

## Version 0.10.3

### Miscellaneous

* Further reduced the dynamic artifact trading range for landless adventurers to match the vanilla restrictions.

### Bug Fixes

* Valid buyers or sellers now properly include non-ruler characters within trading range.

## Version 0.10.2

### Interactions

* Enabled spending influence in order to increase acceptance in artifact interactions.
* AI will now also target nearby domicile owners in artifact interactions.

### Miscellaneous

* Reduced the dynamic artifact trading range for landless rulers.

### Localization

* Updated Spanish translation by @Ferchu.

## Version 0.10.1

### Bug Fixes

* Landless adventurers are now valid buyers or sellers with the "Within Trading Range" game rule setting.

## Version 0.10.0

### Compatibility

* Adapted to CK3 1.13.0.1

### UI Improvements

* Added 9 new modifier filters, including legitimacy, travel, and influence.

## Version 0.9.2

### Compatibility

* Added more triggers to be overridden by the AGOT compatibility submod.

## Version 0.9.1

### Localization

* Added Spanish translation by @Ferchu.

## Version 0.9.0

### Character Interactions

* Added tooltips for all conditions that may prevent the player from using any of the interactions.
* The Destroy Artifact interaction can no longer be initiated by characters that are "busy in events" or imprisoned.
* If a character is not a valid buyer or seller, the Buy Artifact and Sell Artifact interactions are now disabled with a proper tooltip instead of hidden.
* Enabled submods to impose additional conditions on whether an artifact can be sold by the seller, bought by the buyer, or destroyed.

### UI

* Added a new Special artifact filter for historical unique artifacts, relics, etc.

### Performance

* Improved performance of artifact interactions.

### Compatibility

* Added triggers, effects, and values to be used or overridden by AGOT or the AGOT compatibility submod.
* Improved compatibility with total conversion mods.

## Version 0.8.0

### Compatibility

* Adapted to CK3 1.12.1

## Version 0.7.3

### UI Improvements

* Added Sell Artifacts and Buy Artifacts buttons to Artifact Finder for compatibility with mods that modify the Inventory window.

### Game Rules

* Added the `GG_can_change_rule` flag to all game rules so they could be changed mid-game with the Gamerule Gadget mod.

### Localization

* Added English localization for all languages.

### Compatibility

* Added `at_is_loaded` compatibility trigger to enable other mods to dynamically detect this one.

## Version 0.7.2

### Compatibility

* Added `at_artifact_trade_loaded` global variable on game start to enable other mods to detect this one

## Version 0.7.1

### Compatibility

* Adapted to CK3 1.11.0

## Version 0.7.0

### Compatibility

* Adapted to CK3 1.10.0

### UI Improvements

* Improved filtering by Modifier
  * Historical artifacts are now properly included
  * Artifacts with negative modifiers are also included
  * Combined few existing filter options for better usability

## Version 0.6.0

### Character Interactions

* Added QWA (rarity) considerations for the AI when buying, selling, and destroying artifacts
  * Always negative, increases with QWA when buying and decreases with QWA when selling
* Increased impact of artifact claims, equipped, uniqueness and durability on AI decisions
  * The AI is now very unlikely to sell equipped and unique artifacts
* Added dynasty banner, house banner, and religious relic considerations also to regular dynasty, house, and religious members with reduced impact
  * The AI is now less likely to sell their dynasty and house banners and religious relics, and more likely to buy them
* Increased slightly player ask price multiplier
  * Artifacts are now even more expensive to buy (20% to 80% more than base price depending on AI greed)

## Version 0.5.2

### Bug Fixes

* Fixed issues with multiplayer support
  * Selected filter and sort options are no longer shared between players
  * Filtered and sorted artifact lists are no longer shared between players
  * The artifact selected to be bought or sold is no longer shared between players
  * Players can now trade artifacts between themselves

## Version 0.5.1

### Compatibility

* Adapted to CK3 1.9.1

### Bug Fixes

* Small fixes to localization
* Fixed base AI willingness to destroy artifacts when improvements are disabled

## Version 0.5.0

### Character Interactions

* Added improvements to the vanilla Destroy Artifact interaction
  * Enabled destroying Famed and Illustrious artifacts
  * Artifact durability now impacts the destroy price (and piety for Aniconist rulers)
  * Made the AI decision making much more sophisticated and consistent with buying and selling
  * Introduced a game rule to enable or disable these improvements

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
