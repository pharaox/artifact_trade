# Search & Trade Artifacts

## Overview

With this mod, you can search for artifacts, buy them from other characters, and sell them to other characters. The game doesn't have an artifact trading system, so this mod adds one. Since such a system would not be usable without advanced artifact filtering and sorting, it adds an "artifact finder" as well.

The [Auction Off Artifact](https://steamcommunity.com/workshop/filedetails/?id=2747305366) mod enables selling of artifacts, however it's fairly limited. No actual trading takes place, you can only sell but not buy, and you can *always* sell, which undermines the realism.

This mod adds what is missing, and more. The system is balanced so that it does not offer significant advantages to the player. The AI will use it as well, initiating, accepting, or rejecting buy and sell interactions based on a comprehensive estimation of the artifact's usefulness and significance.

In case you don't like artifact trading for some reason, you can disable the trading part via a game rule.

## Searching for Artifacts

To search for artifacts, click on the round ring button in the lower middle portion of the screen. This opens the **Artifact Finder** window.

![Artifact Finder](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303401/C4D77756FBBDFD1BB5EE2E3693F36131267D2287/?ima=fit)

This window is very similar to **Character Finder**. Without any filters, it contains a list of all artifacts in the game. You can filter artifacts by various criteria, including rarity, type, uniqueness, equipped or not, owned by you or not, claimed or not, etc. You can also sort artifacts by rarity, durability, type, or base price.

**Note:** Due to modding limitations, the **Artifact Finder** does not offer sorting or searching for artifacts by name.

## Buying and Selling Artifacts

To buy an artifact, open the **Inventory** window and click **Buy Artifacts**. This opens an artifact selection window similar to **Artifact Finder** that also allows you to select the artifact to be bought by clicking on it.

![Buy Artifacts](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303383/22CB21BDC1D2071566C7741A8C68543AD1C33B98/?ima=fit)

When buying artifacts, the list contains only artifacts that can be bought at this time (there are valid sellers willing to sell them to you). Clicking on an artifact opens the **Buy Artifact** interaction, where you can review the interaction effects, the seller's price, and their reasons for accepting, and eventually buy the artifact.

![Buy Artifact](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303392/317BA2D4D31D25DA426407690C8796488AA9F2D6/?ima=fit)

To sell an artifact, open the **Inventory** window and click **Sell Artifacts**. This again opens the artifact selection window so you can select the artifact to be sold.

![Sell Artifacts](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303367/96686FBA77F0EC998D776DE7DF0C9399D155F2AB/?ima=fit)

When selling artifacts, the list contains only artifacts that are not equipped and can be sold at this time (there are valid buyers willing to buy them from you). Clicking on an artifact opens a character selection window to select a buyer.

![Sell Artifacts Choose Buyer](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303374/B5ACFC59CE3771A791C91868E7AA8C0B8E350FA8/?ima=fit)

The list contains only valid buyers that are willing to buy the selected artifact. Buyers may offer different prices for the artifact, and will never offer more than their *short term budget*. Since buyers can't be sorted by their bid prices, the list contains only a limited number of buyers offering the highest bid prices. This number is 5 by default and can be configured via a game rule.

After a buyer has been selected, clicking the button opens the **Sell Artifact** interaction, where you can review the effects and the buyer's reasons for accepting, and eventually sell the artifact.

![Sell Artifact](https://steamuserimages-a.akamaihd.net/ugc/2047490891201303378/309D444558B708CAE47B96AABA8773BC1744CE89/?ima=fit)

You can also initiate the **Buy Artifact** and **Sell Artifact** interactions directly by right-clicking on a character. However, not all characters are [valid buyers or sellers](#valid-buyers-and-sellers), or are willing to buy or sell an artifact, so these interactions could be hidden, disabled, or rejected. Initiating the interactions directly is still a good way to explore a particular character's reasons for rejecting a trade, or use a hook on a character if you have one.

### Artifact Prices

The *base artifact prices* are roughly the same as the prices in [Auction Off Artifact](https://steamcommunity.com/workshop/filedetails/?id=2747305366), so players already familiar with that mod should feel at home. However, instead of being based on rarity, the formula used here is based on the artifact's *Quality and Wealth Average (QWA)*, two hidden properties with values from 0 to 100 that actually determine the rarity. The actual formula is:

* Determine QWA as *(quality + wealth) / 2*
* Multiply by 2.5
* Multiply by durability as percentage value
* If the artifact is unique, multiply by 3
* Round and ensure a minimum of 10

Actual trades are settled at the *bid price* (buyer's price) if the initiating party is the seller, and the *ask price* (seller's price), if the initiating party is the buyer. These prices are calculated by multiplying the base price by a factor depending on AI greed, and an additional factor of 0.8 (for the bid price) or 1.2 (for the ask price) if the initiating party is the player. As a result, the player always buys at higher and sells at lower prices compared to the AI. This is done to prevent exploits, and to make it a bit more challenging for the player to use the trading system to their advantage.

### AI Willingness to Buy or Sell

When buying artifacts, the AI acceptance is influenced by multiple factors. One of the most important is the artifact's QWA compared to that of the worst artifact of the same type owned by the buyer that would still be equipped. For example, for helmets this would be the best helmet, since only one helmet can be equipped, and for trinkets this would be the 4-th best, since 4 trinkets can be equipped. Note that all equippable and beneficial artifacts are evaluated, no matter if actually equipped or not. Other factors include the artifact's durability as percentage value, uniqueness, is the artifact equippable and beneficial to the buyer, unwanted, or cursed, buyer's claims or special relationship to the artifact (dynast and a dynasty banner, etc.), and the artifact's price.

When selling artifacts, the AI acceptance is influenced by similar factors, but working in the opposite direction, with some minor differences. The artifact's QWA is compared to that of the best artifact of the same type owned by the seller that would not be equipped. For example, for helmets this would be the 2-nd best helmet owned by the seller, and for trinkets this would be the 5-th best trinket.

In addition, the AI will never offer to pay more than their *short term budget* (the portion of the AI's budget that can be used for short term purchases), and will only sell if the other party offers enough gold to pay the full price.

The artifact's QWA strongly correlates with rarity. When selling, you may find it quite hard to find buyers for common artifacts, and progressively easier for artifact of higher rarities. When buying, you may find it quite easy to find sellers for common artifacts, and progressively harder for artifact of higher rarities. You could spend a hook if you have one on a character to increase their willingness to buy or sell.

AI rulers will regularly initiate buy and sell artifact interactions with other AI characters (never the player), and this will sometimes result in actual trades.

### Valid Buyers and Sellers

For added realism and also to improve performance on lower-end machines, whether a character is considered to be a valid buyer or seller is determined by the **Valid Buyers or Sellers** game rule. It has the following settings:

* **Same and Neighboring Realms**: Characters in the same and neighboring realms (less buyers or sellers, better performance and realism).
* **Within Trading Range**: Characters in the same and neighboring realms, and foreign rulers within a dynamic trading range depending on rank (smallest for counts, largest for emperors), measured as the distance between capitals. This is the default setting.
* **All Characters**: All characters within diplomatic range (more buyers or sellers, worse performance and realism).

The AI uses a slightly different version of the above due to engine limitations.

## Compatibility

This mod should be compatible with all other mods, including total conversion mods, except for those few mods that modify the *Inventory* window. If in doubt, put this mod higher in the load order - you may lose the new *Inventory* window buttons as a result but other mods should work as expected.

## Credits

* [Auction Off Artifact](https://steamcommunity.com/workshop/filedetails/?id=2747305366) for the original formula for artifact prices.
* [Advanced Character Search](https://steamcommunity.com/workshop/filedetails/?id=2346680183) for the approach used for filtering and sorting.
