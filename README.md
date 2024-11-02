# Search & Trade Artifacts

[Subscribe on Steam](https://steamcommunity.com/sharedfiles/filedetails/?id=2962238514)

## Overview

With this mod, you can search for artifacts, buy them from other characters, and sell them to other characters. The game doesn't have an artifact trading system, so this mod adds one. Since such a system would not be usable without advanced artifact filtering and sorting, it adds an "artifact finder" as well.

In version 1.9 CK3 enabled destroying of artifacts for gold, however it's fairly limited. No actual trading takes place, you can destroy, but neither sell nor buy, and only common and masterwork artifacts. Furthermore, you can *always* sell, which undermines the realism.

This mod adds what is missing, and more. The system is balanced so that it does not offer significant advantages to the player. The AI will use it as well, initiating, accepting, or rejecting buy and sell interactions based on a comprehensive estimation of the artifact's usefulness and significance.

The base artifact prices in this mod are mainly determined by the artifact's *quality and wealth* (hidden properties that determine rarity), and roughly correspond to the destroy prices. Actual trades are settled at slightly different prices that also depend on the AI greed of the accepting party. Tribal characters demand and offer lower prices. The player can never sell or destroy an artifact at a price higher than the one they bought it, since AI sellers include a "profit margin" when selling to the player.

When buying and selling artifacts, the AI acceptance is influenced by multiple factors. Besides the artifact rarity compared to that of other relevant artifacts, they include the artifact's durability, its uniqueness, is it equippable and beneficial to the character, is it unwanted or cursed, the character's claims or special relationship to the artifact, the artifact's price, and the character's wealth. In addition, the AI will never offer to pay more than their *short term budget*, and will only sell if the other party offers enough gold to pay the full price.

For added realism and better performance, not all characters are valid buyers or sellers. By default, these are characters in the same and neighboring realms, and foreign rulers within a dynamic trading range depending on rank. This can be adjusted via a game rule.

In case you don't like artifact trading for some reason, you can disable the trading part via a game rule.

This mod also substantially improves the vanilla **Destroy Artifact** interaction:

* All rulers can now destroy also Famed and Illustrious artifacts.
* The destroy price (and piety for Aniconist rulers) is influenced by the artifact durability.
* The AI decision making is much more sophisticated and consistent with buying and selling.

In the "Roads to Power" DLC, CK3 added buying and selling artifacts by landless adventurers as part of the **Visit Holding** decision event chain. This mod substantially improves upon this feature as well:

* Artifact prices are consistent and based on the above criteria, instead of being somewhat based on rarity but otherwise random.
* Adventurers and peddlers can only buy artifacts if they can afford them.
* Artifacts can be bought in all holding types above certain development level, and their quality and wealth (and therefore rarity and price) depend on that level as well.
* Artifacts sold by merchants are still better on average, but in a more balanced way. They will be destroyed or replaced after some time if not bought.
* AI landless adventurers will regularly buy and sell artifacts as well.

In addition, currently this mod fixes a [vanilla issue](https://forum.paradoxplaza.com/forum/threads/ai-landless-adventurers-are-not-visiting-settlements-if-you-switch-to-any-of-them-you-cant-as-well.1712826/) that prevents AI landless adventurers from visiting holdings.

Since the original vanilla event chain can't be changed without a significant compatibility sacrifice, this mod disables the artifact trading options in the vanilla chain and adds an entirely new chain, reachable via a new option of the **Visit Holding** decision.

These improvements are enabled by default but can also be disabled via game rules.

## Compatibility

The current version is compatible with CK3 1.13. If you are still on CK3 1.12.x, use [version 0.9.2](https://github.com/pharaox/artifact_trade/releases/download/0.9.2/search_and_trade_artifacts-0.9.2.zip) instead.

This mod is compatible with all other mods, including total conversion mods such as AGOT and EK2, except for those few mods that modify the **Inventory** window or the **Destroy Artifact** interaction. If you use such mods, put this mod before them in the load order - you may lose the new **Inventory** window buttons or the **Destroy Artifact** improvements as a result, but everything else should work as expected. The new buttons are also available in the **Artifact Finder** window, so losing them in the **Inventory** window is no big deal.

This mod is now fully compatible with [A Game of Thrones](https://steamcommunity.com/sharedfiles/filedetails/?id=2962333032) with a compatibility patch, see [Links](#links).

This mod also supports changing its game rules mid-game with the [Gamerule Gadget](https://steamcommunity.com/sharedfiles/filedetails/?id=2826829936) mod.

I strongly recommend using also the [Unofficial Patch](https://steamcommunity.com/sharedfiles/filedetails/?id=2871648329) mod as it fixes many vanilla artifact issues. Put this mod after Unofficial Patch in the load order.

## Localization

This mod is currently available in English and Spanish (translated by @Ferchu). For other languages, it uses the original English text as a placeholder. Translations for other languages are available as separate mods, see [Links](#links).

## Searching for Artifacts

To search for artifacts, click on the round ring button in the lower middle portion of the screen. This opens the **Artifact Finder** window.

![Artifact Finder](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303401/C4D77756FBBDFD1BB5EE2E3693F36131267D2287/?ima=fit)

This window is very similar to **Character Finder**. Without any filters, it contains a list of all artifacts in the game. You can filter artifacts by various criteria, including rarity, type, uniqueness, equipped or not, owned by you or not, claimed or not, etc. You can also sort artifacts by rarity, durability, type, or base price.

**Note:** Due to modding limitations, the **Artifact Finder** does not offer sorting or searching for artifacts by name.

## Buying and Selling Artifacts

To buy an artifact, open the **Inventory** window (or the **Artifact Finder** window) and click **Buy Artifacts**. This opens an artifact selection window similar to **Artifact Finder** that also allows you to select the artifact to be bought by clicking on it.

![Buy Artifacts](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303383/22CB21BDC1D2071566C7741A8C68543AD1C33B98/?ima=fit)

When buying artifacts, the list contains only artifacts that can be bought at this time (there are valid sellers willing to sell them to you). Clicking on an artifact opens the **Buy Artifact** interaction, where you can review the interaction effects, the seller's price, and their reasons for accepting, and eventually buy the artifact.

![Buy Artifact](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303392/317BA2D4D31D25DA426407690C8796488AA9F2D6/?ima=fit)

To sell an artifact, open the **Inventory** window (or the **Artifact Finder** window) and click **Sell Artifacts**. This again opens the artifact selection window so you can select the artifact to be sold.

![Sell Artifacts](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303367/96686FBA77F0EC998D776DE7DF0C9399D155F2AB/?ima=fit)

When selling artifacts, the list contains only artifacts that are not equipped and can be sold at this time (there are valid buyers willing to buy them from you). Clicking on an artifact opens a character selection window to select a buyer.

![Sell Artifacts Choose Buyer](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303374/B5ACFC59CE3771A791C91868E7AA8C0B8E350FA8/?ima=fit)

The list contains only valid buyers that are willing to buy the selected artifact. Buyers may offer different prices for the artifact, and will never offer more than their *short term budget*. Since buyers can't be sorted by their bid prices, the list contains only a limited number of buyers offering the highest bid prices. This number is 5 by default and can be configured via a game rule.

After a buyer has been selected, clicking the button opens the **Sell Artifact** interaction, where you can review the effects and the buyer's reasons for accepting, and eventually sell the artifact.

![Sell Artifact](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303378/309D444558B708CAE47B96AABA8773BC1744CE89/?ima=fit)

You can also initiate the **Buy Artifact** and **Sell Artifact** interactions directly by right-clicking on a character. However, not all characters are [valid buyers or sellers](#valid-buyers-and-sellers), or are willing to buy or sell an artifact, so these interactions could be hidden, disabled, or rejected. Initiating the interactions directly is still a good way to explore a particular character's reasons for rejecting a trade, or use a hook on a character if you have one.

### Artifact Prices

The *base artifact prices* in this mod correspond to the destroy prices in CK3 1.9. However, instead of being based on rarity, the formula used here is based on the artifact's *Quality and Wealth Average (QWA)*, two hidden properties with values from 0 to 100 that actually determine the rarity. The actual formula is:

* Determine QWA as `(quality + wealth) / 2`
* Multiply by 2.5
* Multiply by `0.5 + 0.5 * (durability / max_durability)`
* If the artifact is unique, multiply by 3

Actual trades are settled at the *bid price* (buyer's price) if the initiating party is the seller, and the *ask price* (seller's price), if the initiating party is the buyer. These prices are calculated by multiplying the base price by a factor depending on AI greed, and an additional "profit margin" of 50% for the ask price if the initiating party is the player. As a result, the player can never sell or destroy an artifact at a price higher than the one they bought it. This is done to prevent exploits, and to make it a bit more challenging for the player to use the trading system to their advantage.

For consistency with vanilla's **Destroy Artifact**, ask prices are never lower than the artifact destroy value. Also, tribal characters both offer and demand lower prices to reflect their scarcity of gold and for consistency with other vanilla features - 20% lower if one party is tribal, and 40% lower if both parties are tribal.

### AI Willingness to Buy or Sell

When buying artifacts, the AI willingness or acceptance is influenced by multiple factors. One of the most important is the artifact's QWA compared to that of the worst artifact of the same type owned by the buyer that would still be equipped. For example, for helmets this would be the best helmet, since only one helmet can be equipped, and for trinkets this would be the 4-th best, since 4 trinkets can be equipped. Note that all equippable and beneficial artifacts are evaluated, no matter if actually equipped or not. Other factors include the artifact's durability as percentage value, its uniqueness, is it equippable and beneficial to the character, is it unwanted or cursed, the character's claims or special relationship to the artifact (dynast and a dynasty banner, etc.), the artifact's price, and the character's wealth.

When selling artifacts, the AI willingness or acceptance is influenced by similar factors, but working in the opposite direction, with some minor differences. The artifact's QWA is compared to that of the best artifact of the same type owned by the seller that would not be equipped. For example, for helmets this would be the 2-nd best helmet owned by the seller, and for trinkets this would be the 5-th best trinket.

In addition, the AI will never offer to pay more than their *short term budget* (the portion of the AI's budget that can be used for short term purchases), and will only sell if the other party offers enough gold to pay the full price.

The artifact's QWA strongly correlates with rarity. When selling, you may find it quite hard to find buyers for common artifacts, and progressively easier for artifact of higher rarities. When buying, you may find it quite easy to find sellers for common artifacts, and progressively harder for artifact of higher rarities. You could spend a hook if you have one on a character to increase their willingness to buy or sell.

AI landless adventurers are somewhat more willing to trade artifacts. In addition, craftsmen are much more willing to sell, and peddlers are much more willing to both buy and sell, for consistency with their general willingness to do so in the **Visit Holding** decision event chain.

AI rulers will regularly initiate buy and sell artifact interactions with other AI characters (never the player), and this will sometimes result in actual trades.

### Valid Buyers and Sellers

For added realism and also to improve performance on lower-end machines, whether a character is considered to be a valid buyer or seller is determined by the **Valid Buyers or Sellers** game rule. It has the following settings:

* **Same and Neighboring Realms**: Characters in the same and neighboring realms (less buyers or sellers, better performance and realism).
* **Within Trading Range**: Characters in the same and neighboring realms, and foreign rulers within a dynamic trading range depending on rank (smallest for counts, largest for emperors), measured as the distance between capitals. This is the default setting.
* **All Characters**: All characters within diplomatic range (more buyers or sellers, worse performance and realism).

The AI uses a slightly different version of the above due to engine limitations.

## Destroying Artifacts

The UI for destroying artifacts is not changed compared to vanilla. As before, you can use the interaction directly or via the **Inventory** and **Artifact Details** windows.

### AI Willingness to Destroy

The AI willingness to destroy an artifact is influenced by factors similar to those influencing its willingness to sell, with the following differences:

* They are quite reluctant to destroy Famed or Illustrious artifacts, and will almost never destroy unique artifacts.
* As an exception to the above, they will destroy almost anything if they are Aniconist.

## Performance

The **Buy Artifacts** and **Sell Artifacts** interactions might become slow if the number of characters that would accept them is large enough (hundreds). To avoid this, you can use the **Buy / Sell Artifacts Range** game rule to reduce the range these interactions use to look for characters.

## Links

* [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=2962238514)
* [AGOT Compatibility](https://steamcommunity.com/sharedfiles/filedetails/?id=3222480457)
* [Artifact Manager Compatibility](https://steamcommunity.com/sharedfiles/filedetails/?id=2966324178)
* [Princes of Darkness Compatibility (by @fluffy heretic)](https://steamcommunity.com/sharedfiles/filedetails/?id=3108318083])
* [Russian Translation (by @laxfeed)](https://steamcommunity.com/sharedfiles/filedetails/?id=2965215034)
* [Spanish Translation (by @Will1294)](https://steamcommunity.com/sharedfiles/filedetails/?id=2971143815)
* [Chinese Translation (by@無壹)](https://steamcommunity.com/sharedfiles/filedetails/?id=2903983628)
* [French Translation (by @Pata)](https://steamcommunity.com/sharedfiles/filedetails/?id=2976975086)
* [Korean Translation (by @Yankee)](https://steamcommunity.com/sharedfiles/filedetails/?id=2984914446)
* [GitHub Repository](https://github.com/pharaox/artifact_trade)

## Credits

* [Auction Off Artifact](https://steamcommunity.com/workshop/filedetails/?id=2747305366) for the original formula for artifact prices.
* [Advanced Character Search](https://steamcommunity.com/workshop/filedetails/?id=2346680183) for the approach used for filtering and sorting.
