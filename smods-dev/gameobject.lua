---@meta


---@alias SMODS.RequiredParams.Type string[]
---@alias SMODS.GObject SMODS.GameObject | SMODS.GameObject.Subclasses
---@alias SMODS.GameObject.Config SMODS.GameObject.Config.Base | SMODS.GameObject.Config.Extra
---@alias SMODS.GameObject.PrefixConfig SMODS.GameObject.PrefixConfig.Base | SMODS.GameObject.PrefixConfig.Extra
---@alias SMODS.GameObject.Subclasses
---| SMODS.GameObject.Super
---| SMODS.ObjectType
---| SMODS.ConsumeableType
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
---@alias SMODS.GameObject.OwnershipType SMODS.GameObject.Base | SMODS.GameObject.Empty
---@alias SMODS.GameObject.PrefixConfig.Effect SMODS.GameObject.PrefixConfig.Effect.Base | boolean


---@class SMODS.GameObject.Super : SMODS.GameObject
---@field __index SMODS.GameObject
---@field super SMODS.GameObject


---@class SMODS.GameObject.Config.Base


---@class SMODS.GameObject.Config.Extra


---@class SMODS.GameObject.PrefixConfig.Effect.Base
---@field mod? boolean
---@field class? boolean


---@class SMODS.GameObject.PrefixConfig.Base
---@field key? SMODS.GameObject.PrefixConfig.Effect
---@field atlas? SMODS.GameObject.PrefixConfig.Effect
---@field shader? SMODS.GameObject.PrefixConfig.Effect
---@field card_key? SMODS.GameObject.PrefixConfig.Effect
---@field above_stake? SMODS.GameObject.PrefixConfig.Effect
---@field applied_stakes? SMODS.GameObject.PrefixConfig.Effect | table<number, SMODS.GameObject.PrefixConfig.Effect>


---@class SMODS.GameObject.PrefixConfig.Extra
---@field unlocked_stake? SMODS.GameObject.PrefixConfig.Effect


--- Common properties for `GameObject` subclasses
---@class SMODS.GameObject.Extra : SMODS.GameObject.Common
---@field required_params? SMODS.RequiredParams.Type Not in `SMODS.GameObject`
---@field set SMODS.GameObject.Set Not in `SMODS.GameObject`
---@field key string Not in `SMODS.GameObject`
---@field registered boolean Not in `SMODS.GameObject`
---@field obj_table table<string, SMODS.GObject> Not in `SMODS.GameObject`
---@field obj_buffer string[] Not in `SMODS.GameObject`
---@field raw_key? string Not in `SMODS.GameObject`
---@field mod SMODS.Mod Not in `SMODS.GameObject`
---@field original_key string Not in `SMODS.GameObject`
---@field class_prefix string Not in `SMODS.GameObject`
---@field log_interval? number Not in `SMODS.GameObject`
---@field taken_ownership? boolean Not it `SMODS.GameObject`
---@field rarity_original? number Not in `SMODS.GameObject`


---@class SMODS.GameObject.Common
---@field name? string
---@field loc_txt? table Not in `SMODS.GameObject`
---@field unlocked? boolean Not in `SMODS.GameObject`
---@field discovered? boolean Not in `SMODS.GameObject`
---@field no_collection? boolean Not in `SMODS.GameObject`
---@field config? SMODS.GameObject.Config Not in `SMODS.GameObject`
---@field prefix_config? SMODS.GameObject.PrefixConfig | boolean Not in `SMODS.GameObject`
---@field dependencies? string | string[] Not in `SMODS.GameObject`
---@field display_size? BALATRO.UI.Resolution
---@field pixel_size? BALATRO.UI.Resolution


---@class SMODS.GameObject : SMODS.GameObject.Class, SMODS.GameObject.Extra
---@field subclasses SMODS.GameObject.Subclasses[]
---@field required_params? string[]
local GameObject = {}


---@class SMODS.GameObject.Empty


---@class SMODS.GameObject.Base
---@field check_duplicate_register fun(self: SMODS.GameObject): boolean
---@field check_duplicate_key fun(self: SMODS.GameObject): boolean
---@field get_obj? fun(self: SMODS.GameObject, key: string): SMODS.GameObject
---@field register fun(self: SMODS.GameObject)
---@field check_dependencies fun(self: SMODS.GameObject): boolean
---@field process_loc_text fun(self: SMODS.GameObject)
---@field send_to_subclasses fun(self: SMODS.GameObject, func?: string, ...)
---@field inject_class fun(self: SMODS.GameObject)


---@class SMODS.GameObject.Class : BALATRO.Object.Super, SMODS.GameObject.Base
---@field __index SMODS.GameObject
---@field take_ownership fun(self: SMODS.GameObject, key: string, obj: SMODS.GameObject.OwnershipType, silent?: boolean): SMODS.GameObject?
---@field extend fun(self: SMODS.GameObject, args?: table<string, any>): SMODS.GameObject.Super


--- Return a list of instances of the object class
---@overload fun(self: SMODS.GameObject, reversed?: boolean): SMODS.GObject[]
---@param self SMODS.GameObject
---@param reversed boolean
---@return SMODS.GObject[]
GameObject.obj_list = function(self, reversed) end


--- `SMODS.GameObject` - Metatable `__call`
---@overload fun(self: SMODS.GameObject, obj: table<string, any>): SMODS.GameObject?
---@param self SMODS.GameObject
---@param obj? table<string, any>
---@return SMODS.GameObject
GameObject.__call = function(self, obj) end


--- `SMODS.GameObject()` - Creates a  new [SMODS.GameObject](lua://SMODS.GameObject) object
---@param self SMODS.GameObject
---@param args? table<string, unknown>
---@return SMODS.GameObject
_G.SMODS.GameObject = function(self, args) end
_G.SMODS.GameObject = GameObject
