---@meta


---@alias SMODS.Center.OwnershipType SMODS.Center.Base | SMODS.GameObject.Empty
---@alias SMODS.Center.All
---| SMODS.Center
---| SMODS.Joker
---| SMODS.Consumable


---@class SMODS.Center.Super : SMODS.Center
---@field super SMODS.Center


---@class SMODS.Center : SMODS.Center.Class, BALATRO.Prototype.Center.Base
---@field obj_table SMODS.Center[]
---@field set "Center"
---@field config? BALATRO.Center.Config
local Center = {}


---@class SMODS.Center.Common : SMODS.Center.Arguments.Base
---@field atlas string
---@field fake_card? boolean
---@field config? BALATRO.Center.Config


---@class SMODS.Center.Base : SMODS.Center.Common, SMODS.GameObject.Base, SMODS.GameObject.Common
---@field process_loc_text fun(self: SMODS.Center)
---@field loc_vars fun(self: SMODS.Center.All, info_queue: unknown[], card: BALATRO.Card)
---@field get_obj fun(self: SMODS.Center, key: string): BALATRO.Center
---@field delete fun(self: SMODS.Center): boolean
---@field create_fake_card fun(self: SMODS.Center): BALATRO.Card
---@field inject fun(self: SMODS.Center.All)
local CenterBase = {}


---@class SMODS.Center.Class : SMODS.GameObject.Super, SMODS.Center.Base
---@field __index SMODS.Center
---@field take_ownership fun(self: SMODS.Center, key: string, obj: SMODS.Center.OwnershipType, silent?: boolean): SMODS.Center?
---@field pre_inject_class fun(self: SMODS.Center)


---@class SMODS.Center.Arguments.Base
---@field omit? boolean
---@field pools? table<string, boolean>
---@field atlas? string
---@field pos? BALATRO.Node.Point
---@field loc_txt string | table


---@class SMODS.Center.Arguments : SMODS.GameObject.Common, SMODS.Center.Arguments.Base
---@field config? BALATRO.Center.Config
---@field key string
---@field cost? number


--- Generate card popup UI
---@overload fun(self: SMODS.Center, info_queue: unknown[], card: BALATRO.Card, desc_nodes: BALATRO.UI.Node[], specific_vars: table, full_UI_table)
---@param self SMODS.Center
---@param info_queue unknown[]
---@param card BALATRO.Card
---@param desc_nodes BALATRO.UI.Node[]
---@param specific_vars table
---@param full_UI_table BALATRO.Card.AbilityUIBoxTable
CenterBase.generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table) end


--- `SMODS.Center()` - Creates a new [SMODS.Center](lua://SMODS.Center) object
---@param args SMODS.Center.Arguments
---@return SMODS.Center
_G.SMODS.Center = function(args) end
_G.SMODS.Center = Center


------------------------------------------------------------------------------
-- JOKER
------------------------------------------------------------------------------
---@alias SMODS.Joker.OwnershipType SMODS.Joker.Base | SMODS.GameObject.Empty


---@class SMODS.Joker : SMODS.Joker.Class, BALATRO.Prototype.Joker.Base
---@field obj_table SMODS.Center.All[]
---@field set "Joker"
---@field class_prefix string | "j"
---@field config? BALATRO.Center.Config
local Joker = {}


---@class SMODS.Joker.Common : SMODS.Joker.Arguments.Base
---@field pos BALATRO.Node.Point
---@field cost number
---@field rarity number


---@class SMODS.Joker.Base : SMODS.Center.Base, SMODS.Joker.Common
---@field process_loc_text fun(self: SMODS.Joker)
---@field calculate fun(self: SMODS.Joker, card: BALATRO.Card, context: BALATRO.Calc.Context): BALATRO.Calc.Eval
---@field loc_vars fun(self: SMODS.Joker, info_queue: unknown[], card: BALATRO.Card): SMODS.LocVars
---@field locked_loc_vars fun(self: SMODS.Joker, info_queue: unknown[], card: BALATRO.Card): SMODS.LocVars
---@field calc_dollar_bonus fun(self: SMODS.Joker, card: BALATRO.Card): number
---@field set_ability fun(self: SMODS.Joker, card: BALATRO.Card, initial?: boolean, delay_sprites?: boolean)
---@field add_to_deck fun(self: SMODS.Joker, card: BALATRO.Card, from_debuff?: boolean)
---@field remove_from_deck fun(self: SMODS.Joker, card: BALATRO.Card, from_debuff?: boolean)
---@field in_pool fun(self: SMODS.Joker, args: table): boolean, { allow_duplicates: boolean } | nil
---@field update fun(self: SMODS.Joker, card: BALATRO.Card, dt: number)
---@field set_sprites fun(self: SMODS.Joker, card: BALATRO.Card, front?: BALATRO.Prototype.Card)
---@field load fun(self: SMODS.Joker, card: BALATRO.Card, save_table: BALATRO.Card.SaveTable, other_card?: BALATRO.Prototype.Card)
---@field check_for_unlock fun(self: SMODS.Joker, args: table): boolean
---@field set_badges fun(self: SMODS.Joker, card: BALATRO.Card, badges: BALATRO.UI.Node[])
---@field set_card_type_badge fun(self: SMODS.Joker, card: BALATRO.Card, badges: BALATRO.UI.Node[])
---@field draw fun(self: SMODS.Joker, card: BALATRO.Card, layer?: BALATRO.Card.DrawLayer)
---@field inject fun(self: SMODS.Joker)
local JokerBase = {}


---@class SMODS.Joker.Class : SMODS.Center.Super, SMODS.Joker.Base
---@field __index SMODS.Joker
---@field take_ownership fun(self: SMODS.Joker, key: string, obj: SMODS.Joker.OwnershipType, silent?: boolean): SMODS.Joker?
---@field pre_inject_class fun(self: SMODS.Joker)


---@class SMODS.Joker.Arguments.Base
---@field blueprint_compat? boolean
---@field perishable_compat? boolean
---@field eternal_compat? boolean
---@field config? BALATRO.Center.Config
---@field pools? table<string, boolean>


---@class SMODS.Joker.Arguments : SMODS.GameObject.Common, SMODS.Joker.Arguments.Base, SMODS.Center.Arguments
---@field key string
---@field rarity? number
---@field config? BALATRO.Center.Config
---@field loc_txt string | table


--- Generate card popup UI
---@overload fun(self: SMODS.Joker, info_queue: unknown[], card: BALATRO.Card, desc_nodes: BALATRO.UI.Node[], specific_vars: table, full_UI_table)
---@param self SMODS.Joker
---@param info_queue unknown[]
---@param card BALATRO.Card
---@param desc_nodes BALATRO.UI.Node[]
---@param specific_vars table
---@param full_UI_table BALATRO.Card.AbilityUIBoxTable
JokerBase.generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table) end


--- `SMODS.Joker()` - Creates a new [SMODS.Joker](lua://SMODS.Joker) object
---@param args SMODS.Joker.Arguments
---@return SMODS.Joker
_G.SMODS.Joker = function(args) end
_G.SMODS.Joker = Joker


------------------------------------------------------------------------------
-- CONSUMABLE
------------------------------------------------------------------------------
---@alias SMODS.Consumable.OwnershipType SMODS.Consumable.Base | SMODS.GameObject.Empty
---@alias SMODS.Consumable.All SMODS.Consumable | SMODS.Tarot | SMODS.Planet | SMODS.Spectral


---@class SMODS.Consumable.Super : SMODS.Consumable
---@field super SMODS.Consumable


---@class SMODS.Consumable : SMODS.Consumable.Class, BALATRO.Prototype.Tarot.Base, BALATRO.Prototype.Planet.Base, BALATRO.Prototype.Spectral.Base
---@field obj_table SMODS.Center.All[]
---@field set "Tarot" | "Planet" | "Spectral"
---@field class_prefix string | "c"
---@field config? BALATRO.Center.Config
---@field legendaries SMODS.Consumable[]
local Consumable = {}


---@class SMODS.Consumable.Common : SMODS.Consumable.Arguments.Base
---@field pos BALATRO.Node.Point
---@field cost number


---@class SMODS.Consumable.Base : SMODS.Center.Base, SMODS.Consumable.Common
---@field process_loc_text fun(self: SMODS.Consumable.All)
---@field calculate fun(self: SMODS.Consumable.All, card: BALATRO.Card, context: BALATRO.Calc.Context): BALATRO.Calc.Eval
---@field loc_vars fun(self: SMODS.Consumable.All, info_queue: unknown[], card: BALATRO.Card): SMODS.LocVars
---@field locked_loc_vars fun(self: SMODS.Consumable.All, info_queue: unknown[], card: BALATRO.Card): SMODS.LocVars
---@field use fun(self: SMODS.Consumable.All, card: BALATRO.Card, area: BALATRO.CardArea, copier?: unknown)
---@field can_use fun(self: SMODS.Consumable.All, card: BALATRO.Card): boolean
---@field keep_on_use fun(self: SMODS.Consumable.All, card: BALATRO.Card): boolean
---@field set_ability fun(self: SMODS.Consumable.All, card: BALATRO.Card, initial?: boolean, delay_sprites?: boolean)
---@field add_to_deck fun(self: SMODS.Consumable.All, card: BALATRO.Card, from_debuff?: boolean)
---@field remove_from_deck fun(self: SMODS.Consumable.All, card: BALATRO.Card, from_debuff?: boolean)
---@field in_pool fun(self: SMODS.Consumable.All, args: table): boolean, { allow_duplicates: boolean } | nil
---@field update fun(self: SMODS.Consumable.All, card: BALATRO.Card, dt: number)
---@field set_sprites fun(self: SMODS.Consumable.All, card: BALATRO.Card, front?: BALATRO.Prototype.Card)
---@field load fun(self: SMODS.Consumable.All, card: BALATRO.Card, save_table: BALATRO.Card.SaveTable, other_card?: BALATRO.Prototype.Card)
---@field check_for_unlock fun(self: SMODS.Consumable.All, args: table): boolean
---@field set_badges fun(self: SMODS.Consumable.All, card: BALATRO.Card, badges: BALATRO.UI.Node[])
---@field set_card_type_badge fun(self: SMODS.Consumable.All, card: BALATRO.Card, badges: BALATRO.UI.Node[])
---@field draw fun(self: SMODS.Consumable.All, card: BALATRO.Card, layer?: BALATRO.Card.DrawLayer)
---@field inject fun(self: SMODS.Consumable.All)
local ConsumableBase = {}


---@class SMODS.Consumable.Class : SMODS.Center.Super, SMODS.Consumable.Base
---@field __index SMODS.Consumable
---@field take_ownership fun(self: SMODS.Consumable, key: string, obj: SMODS.Consumable.OwnershipType, silent?: boolean): SMODS.Consumable?
---@field pre_inject_class fun(self: SMODS.Consumable)


---@class SMODS.Consumable.Arguments.Base
---@field config? BALATRO.Center.Config
---@field pools? table<string, boolean>
---@field set "Tarot" | "Planet" | "Spectral"
---@field loc_txt string | table
---@field consumeable? boolean
---@field hidden? boolean
---@field soul_set? string | "Spectral"
---@field soul_rate? number
---@field can_repeat_soul? boolean


---@class SMODS.Consumable.Arguments : SMODS.Consumable.Arguments.Base, SMODS.Center.Arguments
---@field key string
---@field config? BALATRO.Center.Config


--- Generate card popup UI
---@overload fun(self: SMODS.Consumable.All, info_queue: unknown[], card: BALATRO.Card, desc_nodes: BALATRO.UI.Node[], specific_vars: table, full_UI_table)
---@param self SMODS.Consumable.All
---@param info_queue unknown[]
---@param card BALATRO.Card
---@param desc_nodes BALATRO.UI.Node[]
---@param specific_vars table
---@param full_UI_table BALATRO.Card.AbilityUIBoxTable
ConsumableBase.generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table) end


--- `SMODS.Consumable()` - Creates a new [SMODS.Consumable](lua://SMODS.Consumable) object
---@param args SMODS.Consumable.Arguments
---@return SMODS.Consumable
_G.SMODS.Consumable = function(args) end
_G.SMODS.Consumable = Consumable


------------------------------------------------------------------------------
-- TAROT
------------------------------------------------------------------------------


---@class SMODS.Tarot : SMODS.Tarot.Class
---@field obj_table SMODS.Center.All[]
---@field set "Tarot"
---@field class_prefix string | "c"
---@field config? BALATRO.Center.Config
---@field legendaries SMODS.Consumable[]
local Tarot = {}


---@class SMODS.Tarot.Class : SMODS.Consumable.Super
---@field __index SMODS.Tarot
---@field take_ownership fun(self: SMODS.Tarot, key: string, obj: SMODS.Consumable.OwnershipType, silent?: boolean): SMODS.Consumable.All?


---@class SMODS.Tarot.Arguments : SMODS.Consumable.Arguments
---@field key string
---@field config? BALATRO.Center.Config
---@field loc_txt string | table
---@field set? string


--- `SMODS.Tarot()` - Creates a new [SMODS.Tarot](lua://SMODS.Tarot) object
---@param args SMODS.Tarot.Arguments
---@return SMODS.Tarot
_G.SMODS.Tarot = function(args) end
_G.SMODS.Tarot = Tarot


------------------------------------------------------------------------------
-- PLANET
------------------------------------------------------------------------------


---@class SMODS.Planet : SMODS.Planet.Class
---@field obj_table SMODS.Center.All[]
---@field set "Planet"
---@field class_prefix string | "c"
---@field config? BALATRO.Center.Config
---@field legendaries SMODS.Consumable[]
local Planet = {}


---@class SMODS.Planet.Class : SMODS.Consumable.Super
---@field __index SMODS.Planet
---@field take_ownership fun(self: SMODS.Planet, key: string, obj: SMODS.Consumable.OwnershipType, silent?: boolean): SMODS.Consumable.All?


---@class SMODS.Planet.Arguments : SMODS.Consumable.Arguments
---@field key string
---@field config? BALATRO.Center.Config
---@field loc_txt string | table
---@field set? string


--- `SMODS.Planet()` - Creates a new [SMODS.Planet](lua://SMODS.Planet) object
---@param args SMODS.Planet.Arguments
---@return SMODS.Planet
_G.SMODS.Planet = function(args) end
_G.SMODS.Planet = Planet


------------------------------------------------------------------------------
-- SPECTRAL
------------------------------------------------------------------------------


---@class SMODS.Spectral : SMODS.Spectral.Class
---@field obj_table SMODS.Center.All[]
---@field set "Spectral"
---@field class_prefix string | "c"
---@field config? BALATRO.Center.Config
---@field legendaries SMODS.Consumable[]
local Spectral = {}


---@class SMODS.Spectral.Class : SMODS.Consumable.Super
---@field __index SMODS.Spectral
---@field take_ownership fun(self: SMODS.Spectral, key: string, obj: SMODS.Consumable.OwnershipType, silent?: boolean): SMODS.Consumable.All?


---@class SMODS.Spectral.Arguments : SMODS.Consumable.Arguments
---@field key string
---@field config? BALATRO.Center.Config
---@field loc_txt string | table
---@field set? string


--- `SMODS.Spectral()` - Creates a new [SMODS.Spectral](lua://SMODS.Spectral) object
---@param args SMODS.Spectral.Arguments
---@return SMODS.Spectral
_G.SMODS.Spectral = function(args) end
_G.SMODS.Spectral = Spectral
