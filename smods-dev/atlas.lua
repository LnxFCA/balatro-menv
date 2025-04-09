---@meta


---@alias SMODS.Atlas.OwnershipType SMODS.Atlas.Base | SMODS.GameObject.Empty
---@alias SMODS.Atlas.TableType string | "ASSET_ATLAS" | "ANIMATION_ATLAS" | "ASSET_IMAGES"


---@class SMODS.Atlas : SMODS.Atlas.Class
---@field obj_table SMODS.Atlas[]
---@field set "Atlas"
---@field key_noloc string
local Atlas = {}


---@class SMODS.Atlas.Common : SMODS.Atlas.Arguments.Base
---@field atlas_table SMODS.Atlas
---@field full_path string
---@field image_data love.ImageData
---@field image love.Image


---@class SMODS.Atlas.Base : SMODS.Atlas.Common, SMODS.GameObject.Base, SMODS.GameObject.Common
---@field inject fun(self: SMODS.Atlas)


---@class SMODS.Atlas.Class : SMODS.GameObject.Super, SMODS.Atlas.Base
---@field __index SMODS.Atlas
---@field take_ownership fun(self: SMODS.Atlas, key: string, obj: SMODS.Atlas.OwnershipType, silent?: boolean): SMODS.Atlas?
---@field pre_inject_class fun(self: SMODS.Atlas)


---@class SMODS.Atlas.Arguments.Base
---@field path string | table<string, string>
---@field py number
---@field px number
---@field raw_key? boolean
---@field language? BALATRO.Language.Key
---@field frames? number
---@field disable_mipmap? boolean


---@class SMODS.Atlas.Arguments : SMODS.GameObject.Common, SMODS.Atlas.Arguments.Base
---@field key string
---@field atlas_table? SMODS.Atlas


--- `SMODS.Atlas()` - Creates a new [SMODS.Atlas](lua://SMODS.Atlas) object
---@param args SMODS.Atlas.Arguments
---@return SMODS.Atlas
_G.SMODS.Atlas = function(args) end
_G.SMODS.Atlas = Atlas
