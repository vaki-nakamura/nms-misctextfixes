----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "BETA"
METADATA_LOCATIZATION   = "LOC5"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game."

-- credits:
-- bk201                pointing out typos, providing feedback on changes
-- Devilin Pixy         pointing out typos
-- Gumsk, lyravega      optimizations of the LUA script



----------------------------------------------------------------------------------------------------
-- fixed text elements - localization file 05
----------------------------------------------------------------------------------------------------

-- fixed typo in British spelling of practise (verb)
TEXT_DIALOGUE_PRACTISE = "Practise language skills"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- game language files
PATH_LANGUAGE = "LANGUAGE\\NMS_LOC5_ENGLISH.MBIN"

-- data array
DATA = 
{
    ALL_REQUEST_WORD_SAY = TEXT_DIALOGUE_PRACTISE,
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

-- modify each localization file
MODIFY(DATA,EXML)



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------