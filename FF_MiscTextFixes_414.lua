
-- mod description
METADATA_MOD_NAME       = "FF_MiscTextFixes_414.pak"
METADATA_MOD_AUTHOR     = "FriendlyFirePL, bk201"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "4.14"
METADATA_MOD_DESC       = "0.12"

----------------------------------------------------------------------------------------------------

-- files to be changed
PATH_LANGUAGE_LOC1 = "LANGUAGE\\NMS_LOC1_ENGLISH.MBIN"
PATH_LANGUAGE_LOC4 = "LANGUAGE\\NMS_LOC4_ENGLISH.MBIN"
PATH_LANGUAGE_LOC6 = "LANGUAGE\\NMS_LOC6_ENGLISH.MBIN"
PATH_LANGUAGE_LOC7 = "LANGUAGE\\NMS_LOC7_ENGLISH.MBIN"

----------------------------------------------------------------------------------------------------

----------------- changes to localization file 1

-- new save messsage for multiplayer and Nexus mission scenarios
TEXT_SAVE_MULTIPLAYER = "Multiplayer &lt;IMG&gt;SLASH&lt;&gt; Mission progress and inventory saved. Player position not saved."
TEXT_SAVE_NEXUSMISSION = "Nexus mission &lt;IMG&gt;SLASH&lt;&gt; Inventory saved. Mission progress and player position not saved."

----------------- changes to localization file 4

-- fixed typo in commercial
TEXT_COMMERCIAL_BUILD = "Commercial HoloTerminus"

----------------- changes to localization file 6

-- new label for destroyed derelict freighters (red icon, no landing pads)
TEXT_DESTROYED_FREIGHTER = "Destroyed Freighter"

----------------- changes to localization file 7

-- fixed exomech AI description (removed the bit about mining activities)
TEXT_EXOMECH_AI_MODULE = "A semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt; for the Minotaur Heavy Exocraft Hybrid. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; to support its primary operator.&#xA;&#xA;The AI pilot will always cede control to the primary operator when they enter the cockpit.&#xA;&#xA;Piloting routines are highly localised. It is incapable of developing emotional bonds nor exercising independent control of the Minotaur."
TEXT_EXOMECH_HARDFRAME = "A collection of salvaged components from a Sentinel Hardframe, reconditioned to fit the &lt;TECHNOLOGY&gt;Minotaur&lt;&gt; Heavy Exocraft Hybrid.&#xA;&#xA;Will function as a semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt;. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; to support its primary operator.&#xA;&#xA;The AI pilot will always cede control to the primary operator when they enter the cockpit."

-- fixed typo in cargo scan deflection message
TEXT_CARGOSCAN_SCRAMBLED = "Incoming Cargo Probe Scrambled!"

-- fixed typo in commercial
TEXT_COMMERCIAL_FREQ = "COMMERCIAL FREQUENCY"

-- fixed typo in commercial
TEXT_COMMERCIAL_QUEST = "Intercept and destroy the &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Locate the mission's &lt;TECHNOLOGY&gt;expedition path&lt;&gt;&#xA;Searching commercial traffic signals: %SIGNAL%"

-- fixed typo in commercial
TEXT_COMMERCIAL_SETL = "commercial innovation"

----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = METADATA_MOD_NAME, 
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    -- localization file 1 ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC1,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {   -- new save messsage for multiplayer
                            ["SKW"] = {"Id","INTRCT_SAVE_NO_POS",},
                            ["VCT"] = {{"Value",TEXT_SAVE_MULTIPLAYER},},                            
                        },

                        {   -- new save messsage for multiplayer
                            ["SKW"] = {"Id","INTRCT_SAVE_NO_POS_NEXUS",},
                            ["VCT"] = {{"Value",TEXT_SAVE_NEXUSMISSION},},                            
                        },
                    }
                },

                {
                    -- localization file 4 ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC4,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {   -- fixed typo in commercial
                            ["SKW"] = {"Id","UI_BASE_SHOP_SUB",},
                            ["VCT"] = {{"Value",TEXT_COMMERCIAL_BUILD},},                            
                        },
                    }
                },

                {
                    -- localization file 6 ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC6,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {   -- new label for destroyed derelict freighters
                            ["SKW"] = {"Id","UI_DERELICT1_LABEL",},
                            ["VCT"] = {{"Value",TEXT_DESTROYED_FREIGHTER},},                            
                        },
                    }
                },

                {
                    -- localization file 7 ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC7,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {   -- fixed exomech AI description
                            ["SKW"] = {"Id","UI_MECH_AUTOPILOT_DESC",},
                            ["VCT"] = {{"Value",TEXT_EXOMECH_AI_MODULE},},                            
                        },

                        {   -- fixed exomech AI description
                            ["SKW"] = {"Id","UI_MECH_SENT_HEAD_DESC",},
                            ["VCT"] = {{"Value",TEXT_EXOMECH_HARDFRAME},},                            
                        },

                        {   -- fixed typo in cargo scan deflection message
                            ["SKW"] = {"Id","UI_SCAN_BLOCKER_SUCCESS",},
                            ["VCT"] = {{"Value",TEXT_CARGOSCAN_SCRAMBLED},},                            
                        },

                        {   -- fixed typo in commercial
                            ["SKW"] = {"Id","UI_UNOWNED_FLEET_HUD",},
                            ["VCT"] = {{"Value",TEXT_COMMERCIAL_FREQ},},                            
                        },

                        {   -- fixed typo in commercial
                            ["SKW"] = {"Id","UI_FREIGHTER_ATTACK_MSG3",},
                            ["VCT"] = {{"Value",TEXT_COMMERCIAL_QUEST},},                            
                        },

                        {   -- fixed typo in commercial
                            ["SKW"] = {"Id","UI_JUDGEMENT_POLICY5_NAME4",},
                            ["VCT"] = {{"Value",TEXT_COMMERCIAL_SETL},},                            
                        },
                    }
                }
            }
        }
    }
}