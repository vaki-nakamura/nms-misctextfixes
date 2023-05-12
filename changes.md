
# List of changes included in version 4.23

> LUA script rework

The methology used in the script was simplified, thanks to the input of Lyravega. AMUMSS will no longer report warnings on empty EXML Change Tables.

# Localization file 1

> New save messages for Multiplayer and Nexus mission scenarios

The existing messages can be misleading, since the only thing that is properly saved is player's inventory state. These new messages specify what is saved, depending on the scenario.

> New verbiage for Solar Panel Power

The stat in question that can be found on life support upgrades is confusing to many players. I opted to express it's functionality in simplier terms: Daytime Efficiency. The new label still gives the general idea of the bonus provided and it allows to keep the + sign on numerical value of the stat.

> Fixed typos

* fixed typo in one of the names used in death screen messages (Kurt Vonnegut) - seriously HG, what the actual fuc
* fixed typo in British spelling of the word Traveller
* fixed typo in Warp Cell description (guarenteed)

# Localization file 3

> Fixed typos

Fixed double dot on the end of description of Cactus Flesh item.

# Localization file 4

> Warp Hypercore crafting tooltip

The in-game tooltip for crafting Warp Hypercores incorrectly ask players to use Antimatter and Antimatter Housing to create this product. A proper tooltip including Antimatter and Storm Crystals was not present in the game. This mods adds the missing tooltip property and changes the Product Table to reference this new tooltip.

> Renamed sodium crystals

The sodium crystals found on planets' surface use the word Nitride in their label. That word is found nowhere else in the game, creating an inconsistency in relation to other crystals' labels (not denoting the type / variant of resource gained) and the actual resource od Sodium Nitrate. The proposed fix is to remove the word Nitride from the label for sodium crystals.

> Osmosis Generator description fix

The description for this particular submarine blueprint states that it is capable of slow recharging of the unit. However, the only stat this technology offers is reduction of the fuel usage. The description has been changed accordingly.

> Fixed typos

* fixed typo in Commercial HoloTerminus building name
* fixed multiple typos related to names of selected refining recipies (Harness Organic Nitrogen)

# Localization file 5

> Fixed typos

Fixed typo in British spelling of word "practise" (verb) in "Practise language skills" prompts.

# Localization file 6

> New label for old derelict freighters

Currently there are 2 types of derelict freighter space encounters present in the game. The old derelicts, broken in half, with no landing pads, denoted by the red icon, and the derelicts added with Desolation update with proc-gen interiors that can be explored. Having two types of freighters with different mechanics using the same name was confusing to some players, hence the idea to rename the former type to Destroyed Freighters.

> Living Water tooltip

During the 3rd stage of the Starbith mission, players are asked to craft an Impossible Membrane. One of the crafting items needed is Living Water. The game offers 2 tooltips on how to acquire it, one of them telling players to get it from space station. In reality, the only source of Living Water is the scripted pulse drive encounter with Child of Helios. The misleading bit about space station has been removed.

> Solar Ray tooltips

Another change related to the Starbirth mission - players are asked to use Solar Ray tech to gather Liquid Sun resource. The tooltip for this technology reads that it converts metallic elements into the Liquid Sun, when in reality any terrain deposit material will work. 3 tooltips have been adjusted to reflect that.

> Multi-Tool Expansion Slot description changes

The description for MT expansion items has been altered to put more focus on the upgrade station. The information about space station has been removed, since only stations in regulated systems are equipped with the dedicated upgrade terminal.

> Cargo Bulkhead description changes

According to the description, Cargo Bulkheads can be acquired from frigate expeditions, which stands in contrast to the loot tables of said expeditions. This info has been replaced with a mention of a new potential source of these items: rescuing capital freighters from pirate attacks. In addition, a new line has been added, notyfying player that Bulkheads can be used for expanding both Technology and Cargo inventories on a freighter.

# Localization file 7

> Minotaur AI module description

Both the Hardframe Body and the standalone AI module mention minotaur being capable of "mining activities", where no such mechanics are present in the game. This info was removed from descriptions.

> Sentinel Weapon Shards for Boltcaster

The wording in descriptions of Sentinel Weapon Shards made it sound like the bonuses from upgrades were applied to total damage output of the Multitool, regardless of installed weapon system(s). As these modules improve only the stats of the Boltcaster weapon, a change was made to reflect that. In addition the latter part of description was slightly altered to get a nicer wrap effect on the text.

> New verbiage for "cannot change difficulty at this time"

If the player takes part in a Nexus mission or is in group with other players, the game prevents them from changing their current difficulty settings from the menu. The message displayed on a greyed out button has been modified to reflect those scenarios.

> Fixed typos

* fixed typos in multiple instances of word "commercial" (buying frigates, pirate mission tooltips, settlement policy event)
* fixed typo in Cargo Scan Deflector message
* fixed multiple typos related to names of selected refining recipies (Harness Organic Nitrogen)

# Localization file 8

> Anti-Gravity Well desctiption changes

The new Interceptor-specific launch thruster system comes with a built-in recharge functionality by default, which is not noted in the description of said module. A new portion of description mimicking the existing style has been added.

# Other files

> Abandoned lore player titles

Due to a typo in Player Title Data table, 2 of the abandoned lore titles were not showing for players in game. Instead, their descriptions where put in place of actual player titles, causing the game to display those descriptions instead of player name in places like inventory UI screen or the player banners in Nexus. Those titles were Player The Warned (for finding records of Odvinsko) and Player The Abandoned (for finding records of The Voice).
