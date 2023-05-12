----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "423"
METADATA_LOCATIZATION   = "LOC7"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game. Module for localization file 7."

-- credits:
-- bk201                                        pointing out typos, providing feedback on changes
-- Devilin Pixy, members of NMS Discord         pointing out typos
-- Gumsk, lyravega                              optimizations of the LUA script



----------------------------------------------------------------------------------------------------
-- fixed text elements
----------------------------------------------------------------------------------------------------

-- fixed exomech AI description (removed the bit about mining activities)
TEXT_EXOMECH_AI_MODULE = "A semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt; for the Minotaur Heavy Exocraft Hybrid. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; to support its primary operator.&#xA;&#xA;The AI pilot will always cede control to the primary operator when they enter the cockpit.&#xA;&#xA;Piloting routines are highly localised. It is incapable of developing emotional bonds nor exercising independent control of the Minotaur."
TEXT_EXOMECH_HARDFRAME = "A collection of salvaged components from a Sentinel Hardframe, reconditioned to fit the &lt;TECHNOLOGY&gt;Minotaur&lt;&gt; Heavy Exocraft Hybrid.&#xA;&#xA;Will function as a semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt;. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; to support its primary operator.&#xA;&#xA;The AI pilot will always cede control to the primary operator when they enter the cockpit."

-- fixed typo in cargo scan deflection message
TEXT_CARGOSCAN_SCRAMBLED = "Incoming Cargo Probe Scrambled!"

-- fixed typo in commercial
TEXT_COMMERCIAL_FREQ = "COMMERCIAL FREQUENCY"
TEXT_COMMERCIAL_QUEST = "Intercept and destroy the &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Locate the mission's &lt;TECHNOLOGY&gt;expedition path&lt;&gt;&#xA;Searching commercial traffic signals: %SIGNAL%"
TEXT_COMMERCIAL_SETL = "commercial innovation"

-- added Boltcaster to description of Sentinel Weapons Shards
TEXT_WEAPON_SHARD = "An &lt;SPECIAL&gt;anomalous&lt;&gt; upgrade for the Multi-Tool's &lt;TECHNOLOGY&gt;Boltcaster weapon system&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;This eerie, glassy shard was extracted from &lt;SPECIAL&gt;Sentinel debris&lt;&gt;. Its exact effect upon the Multi-Tool will not be known until after installation is complete."

-- new wordage for "cannot change difficulty settings at this time"
TEXT_DIFFICULTY_MULTIPLAYER = "- Not available during Nexus mission or Multiplayer -"

-- fixed typo in Nitrogen in names of refining recipies
TEXT_NITROGEN_REFINING = "Harness Organic Nitrogen"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- localization file path
PATH_LANGUAGE = "LANGUAGE\\NMS_LOC7_ENGLISH.MBIN"

-- data array
DATA = 
{
    UI_MECH_AUTOPILOT_DESC = TEXT_EXOMECH_AI_MODULE,
    UI_MECH_SENT_HEAD_DESC = TEXT_EXOMECH_HARDFRAME,
    UI_SCAN_BLOCKER_SUCCESS = TEXT_CARGOSCAN_SCRAMBLED,
    UI_UNOWNED_FLEET_HUD = TEXT_COMMERCIAL_FREQ,
    UI_FREIGHTER_ATTACK_MSG3 = TEXT_COMMERCIAL_QUEST,
    UI_JUDGEMENT_POLICY5_NAME4 = TEXT_COMMERCIAL_SETL,
    UP_SENTGUN_DESC = TEXT_WEAPON_SHARD,
    UI_OPTIONS_DIFFICULTY_BAN = TEXT_DIFFICULTY_MULTIPLAYER,
    R_NAME_PLANT_CAVE_CATALYST1 = TEXT_NITROGEN_REFINING,
    R_NAME_PLANT_WATER_CATALYST1 = TEXT_NITROGEN_REFINING,
    R_NAME_PLANT_CAVE_CATALYST2 = TEXT_NITROGEN_REFINING,
    R_NAME_PLANT_WATER_CATALYST2 = TEXT_NITROGEN_REFINING,
}



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_LOCATIZATION.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE,
                    ["EXML_CHANGE_TABLE"] = {},
                }
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- mod functions
----------------------------------------------------------------------------------------------------

-- EXML Change Table for the file
local EXML = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

-- function to modify tables
function MODIFY(_data,_exml)
    if _data~=nil and _exml~=nil then
        for id,value in next,_data do
            local change = {["SKW"] = {"Id",id,},["VCT"] = {{"Value",value},},}
            _exml[#_exml+1] = change
        end
    end
end

-- modify the localization file
MODIFY(DATA,EXML)



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------