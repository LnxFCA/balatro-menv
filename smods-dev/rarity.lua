---@meta


---@alias SMODS.Rarity.OwnershipType SMODS.Rarity.Base | SMODS.GameObject.Empty


---@class SMODS.Rarity : SMODS.Rarity.Class
---@field obj_table SMODS.Rarity[]
---@field set "Rarity"
local Rarity = {}


---@class SMODS.Rarity.Common : SMODS.Rarity.Arguments.Base
---@field loc_txt string | table
---@field badge_colour BALATRO.UI.Colour
---@field pools table<string, SMODS.Rarity.Pool | SMODS.Rarity.Pool.Extra>


---@class SMODS.Rarity.Base : SMODS.Rarity.Common, SMODS.GameObject.Base, SMODS.GameObject.Common
---@field process_loc_text fun(self: SMODS.Rarity)
---@field get_rarity_badge fun(self: SMODS.Rarity, rarity: string): string
---@field gradient? fun(self: SMODS.Rarity, dt: number)  Deprecated
---@field get_weight? fun(self: SMODS.Rarity, weight?: number, object_type?: SMODS.ObjectType): number
---@field inject fun(self: SMODS.Rarity)
local RarityBase = {}


---@class SMODS.Rarity.Class : SMODS.GameObject.Super, SMODS.Rarity.Base
---@field __index SMODS.Rarity
---@field take_ownership fun(self: SMODS.Rarity, key: string, obj: SMODS.Rarity.OwnershipType, silent?: boolean): SMODS.Rarity?
---@field pre_inject_class fun(self: SMODS.Rarity)


---@class SMODS.Rarity.Pool
---@field key string
---@field rate? number


---@class SMODS.Rarity.Pool.Extra
---@field weight number


---@class SMODS.Rarity.Arguments.Base
---@field default_weight? number
---@field pools? table<string, SMODS.Rarity.Pool | boolean>


---@class SMODS.Rarity.Arguments : SMODS.GameObject.Common, SMODS.Rarity.Arguments.Base
---@field key string
---@field loc_txt string | table
---@field badge_colour? BALATRO.UI.Colour


--- `SMODS.Rarity()` - Creates a new [SMODS.Rarity](lua://SMODS.Rarity) object
---@param args SMODS.Rarity.Arguments
---@return SMODS.Rarity
_G.SMODS.Rarity = function(args) end
_G.SMODS.Rarity = Rarity
