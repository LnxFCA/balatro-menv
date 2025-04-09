---@meta


---@alias SMODS.Stake.OwnershipType SMODS.Stake.Base | SMODS.GameObject.Empty


---@class SMODS.Stake : SMODS.Stake.Class, BALATRO.Prototype.Stake.Base, BALATRO.Prototype.Stake.Extra
---@field obj_table SMODS.Stake[]
---@field set "Stake"
---@field class_prefix string | "stake"
---@field count number
---@field order number
local Stake = {}


---@class SMODS.Stake.Common : SMODS.Stake.Arguments.Base
---@field atlas string
---@field pos BALATRO.Node.Point
---@field loc_txt string | table


---@class SMODS.Stake.Base : SMODS.Stake.Common, SMODS.GameObject.Base, SMODS.GameObject.Common
---@field process_loc_text fun(self: SMODS.Stake)
---@field get_obj fun(self: SMODS.Stake, key: string): SMODS.Stake
---@field modifiers? fun(self?: SMODS.Stake)
---@field inject fun(self: SMODS.Stake)
local StakeBase = {}


---@class SMODS.Stake.Class : SMODS.GameObject.Super, SMODS.Stake.Base
---@field __index SMODS.Stake
---@field take_ownership fun(self: SMODS.Stake, key: string, obj: SMODS.Stake.OwnershipType, silent?: boolean): SMODS.Stake?
---@field pre_inject_class fun(self: SMODS.Stake)


---@class SMODS.Stake.Arguments.Base
---@field applied_stakes string[]
---@field above_stake? string
---@field colour? BALATRO.UI.Colour
---@field sticker_atlas? string
---@field sticker_pos? BALATRO.Node.Point
---@field unlocked_stake? string


---@class SMODS.Stake.Arguments : SMODS.GameObject.Common, SMODS.Stake.Arguments.Base
---@field key string
---@field loc_txt string | table
---@field atlas? string
---@field pos? BALATRO.Node.Point


--- `SMODS.Stake()` - Creates a new [SMODS.Stake](lua://SMODS.Stake) object
---@param args SMODS.Stake.Arguments
---@return SMODS.Stake
_G.SMODS.Stake = function(args) end
_G.SMODS.Stake = Stake
