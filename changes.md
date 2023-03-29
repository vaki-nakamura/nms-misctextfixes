
# List of changes included in version 0.21

> New save message for Multiplayer and Nexus mission scenarios

The existing messages can be misleading, since the only thing that is properly saved is player's inventory state. These new messages should reflect that.

> Minotaur AI module description

Both the Hardframe Body and the standalone AI module mention minotaur being capable of "mining activities", where no such mechanics are present in the game. This info was removed from descriptions.

> New label for old derelict freighters

Currently there are 2 types of derelict freighter space encounters present in the game. The old derelicts, broken in half, with no landing pads, denoted by the red icon, and the derelicts added with Desolation update with proc-gen interiors that can be explored. Having two types of freighters with different mechanics using the same name was confusing to some players, hence my idea to rename the former type to Destroyed Freighters.

> Changes to survey missions' labels

Labels used for local system survey missions (scanning flora, fauna, minerals) did not use line break characters, which made it possible for them to "stick" to one another when multiple missions took place on the same planet. We added line breaks to improve readability of these labels and icons to bring them more in line with other elements visible on the scan card.

> Sentinel Weapon Shards for Boltcaster

The wording in descriptions of Sentinel Weapon Shards made it sound like the bonuses from upgrades were applied to overall damage potential of the Multitool. As these modules target only the stats of the Boltcaster weapon, a change was made to reflect that. In addition the latter part of description was slightly altered to get a nicer wrap effect on the text. 

> Renamed sodium crystals

The sodium crystals found on planets' surface use the word Nitride in their label. That word is found nowhere else in the game, creating an inconsistency in relation to other crystals' labels (not denoting the type / variant of resource gained) and the actual resource od Sodium Nitrate. The proposed fix is to remove the word Nitride from the label for sodium crystals.

> Living Water tooltip

During the 3rd stage of the Starbith mission, players are asked to craft an Impossible Membrane. One of the crafting items needed is Living Water. The game offers 2 tooltips on how to acquire it, one of them telling players to get it from space station. In reality, the only source of Living Water is the scripted pulse drive encounter with Child of Helios. The misleading bit about space station has been removed.

> Solar Ray tooltips

Another fix related to the Starbirth mission - players are asked to use Solar Ray tech to gather Liquid Sun resource. The tooltip for this technology reads that it converts metallic elements into the Liquid Sun, when in reality any terrain deposit material will work. 3 tooltips have been adjusted to reflect that.

> Abandoned lore player titles

Due to a typo in Player Title Data table, 2 of the abandoned lore titles were not showing for players in game. Instead, their descriptions where put in place of actual player titles, causing the game to display those descriptions instead of player name in places like inventory UI screen or the player banners in Nexus. Those titles were Player The Warned (for finding records of Odvinsko) and Player The Abandoned (for finding records of The Voice).

> various typos fixed

* multiple instances of typos in word "commercial" (buying frigates, pirate mission tooltips, settlement policy event)
* typo in Cargo Scan Deflector message
* typo in one of the names used in death screen messages (Kurt Vonnegut)
