---@meta


---@alias SMODS.GameObject.Arguments SMODS.GameObject.Arguments.Base | SMODS.GameObject.Arguments.Extra
---@alias SMODS.RequiredParams.Type string[]
---@alias SMODS.GObject SMODS.GameObject | SMODS.GameObject.Subclasses
---@alias SMODS.GameObject.Subclasses
---| SMODS.Achievement
---| SMODS.Atlas
---| SMODS.Blind
---| SMODS.Center
---| SMODS.Back
---| SMODS.Booster
---| SMODS.Consumable
---| SMODS.Tarot
---| SMODS.Planet
---| SMODS.Spectral
---| SMODS.Edition
---| SMDOS.Enhancement
---| SMODS.Joker
---| SMODS.Voucher
---| SMODS.Challenge
---| SMODS.DeckSkin
---| SMODS.DrawStep
---| SMODS.Gradient
---| SMODS.Keybind
---| SMODS.Language
---| SMODS.ObjectType
---| SMODS.PokerHand
---| SMODS.Rank
---| SMODS.Suit
---| SMODS.Rarity
---| SMODS.Seal
---| SMODS.Sound
---| SMODS.Stake
---| SMODS.Sticker
---| SMODS.Tag

---@alias SMODS.GameObject.Set string


---@class SMODS.GameObject.Arguments.Base


---@class SMODS.GameObject.Arguments.Extra


---@class SMODS.GameObject.Super : SMODS.GameObject
---@field __index SMODS.GameObject
---@field super SMODS.GameObject


---@class SMODS.GameObject : SMODS.GameObject.Class
---@field __index SMODS.GameObject
---@field subclasses SMODS.GameObject.Subclasses[]
---@field mod SMODS.Mod
---@field original_mod SMODS.Mod
---@field required_params? SMODS.RequiredParams.Type
---@field set SMODS.GameObject.Set
---@field key string
---@field obj_table table<string, SMODS.GObject>
---@field obj_buffer string[]
---@field registered boolean
---@field dependencies string | string[]
---@field raw_key? string
---@field class_prefix string
---@field original_key string
---@field log_interval number
---@field is_loc_modified boolean
---@field taken_ownership boolean
---@field _d? boolean
---@field _u? boolean
---@field _saved_d_u boolean
---@field discovered boolean
---@field unlocked boolean
---@field _discovered_unlocked_overwritten? boolean
---@field atlas? string
local GameObject = {}


---@class SMODS.GameObject.Class : BALATRO.Object.Super
---@field extend fun(self: SMODS.GameObject, args?: table<string, any>): SMODS.GameObject.Super
---@field check_duplicate_register fun(self: SMODS.GameObject): boolean
---@field check_duplicate_key fun(self: SMODS.GameObject): boolean
---@field get_obj? fun(self: SMODS.GameObject, key: string): SMODS.GameObject
---@field register fun(self: SMODS.GameObject)
---@field check_dependencies fun(self: SMODS.GameObject): boolean
---@field process_loc_text fun(self: SMODS.GameObject)
---@field send_to_subclasses fun(self: SMODS.GameObject, func?: string, ...)
---@field inject_class fun(self: SMODS.GameObject)
---@field take_ownership fun(self: SMODS.GameObject, key: string, obj: SMODS.GObject, silent?: boolean): SMODS.GObject?


--- Return a list of instances of the object class
---@overload fun(self: SMODS.GameObject, reversed?: boolean): SMODS.GObject[]
---@param self SMODS.GameObject
---@param reversed boolean
---@return SMODS.GObject[]
GameObject.obj_list = function(self, reversed) end


--- `SMODS.GameObject` - Metatable `__call`
---@overload fun(self: SMODS.GameObject, obj: SMODS.GameObject): SMODS.GameObject?
---@param self SMODS.GameObject
---@param obj? SMODS.GameObject
---@return SMODS.GameObject
GameObject.__call = function(self, obj) end


--- `SMODS.GameObject()` - Creates a  new [SMODS.GameObject](lua://SMODS.GameObject) object
---@param self SMODS.GameObject
---@param args? SMODS.GameObject.Arguments
---@return SMODS.GameObject
_G.SMODS.GameObject = function(self, args) end
