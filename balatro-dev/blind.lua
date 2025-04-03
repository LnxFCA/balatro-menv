---@meta


---@alias BALATRO.Blind.Type string | "Boss" | "Big" | "Small"
---@alias BALATRO.Blind.State.Type string | "Select" | "Upcoming"


---@class BALATRO.Blind.States
---@field Small BALATRO.Blind.State.Type
---@field Big BALATRO.Blind.State.Type
---@field Boss BALATRO.Blind.State.Type


---@class BALATRO.Blind.Choices
---@field Small string
---@field Big string
---@field Boss? string


---@class BALATRO.Blind.TiltVar : BALATRO.TiltVar
---@field dx? number
---@field dy? number


---@class BALATRO.Blind.SaveTable
---@field name string
---@field dollars number
---@field debuff BALATRO.Blind.Debuff
---@field pos BALATRO.Node.Point
---@field mult number
---@field disabled? boolean
---@field discards_sub? number
---@field hands_sub? number
---@field boss? BALATRO.Blind.Boss
---@field config_blind string
---@field chips number
---@field chip_text string
---@field hands? table<BALATRO.Hand.Type, boolean>
---@field only_hand? boolean | BALATRO.Hand.Type
---@field triggered? boolean


---@class BALATRO.Blind.Debuff
---@field hand? BALATRO.Hand.Type
---@field h_size_ge? number
---@field h_size_le? number
---@field suit? string
---@field is_face? string
---@field played_this_ante? boolean
---@field value? string
---@field nominal? number


---@class BALATRO.Blind.Boss
---@field min number
---@field max number
---@field showdown? boolean


---@class BALATRO.Blind.Config
---@field blind BALATRO.Prototype.Blind
---@field h_popup_config? BALATRO.UIBox.Config


---@class BALATRO.Blind : BALATRO.Blind.Class
---@field config BALATRO.Blind.Config | {}
---@field tilt_var BALATRO.Blind.TiltVar
---@field ambient_tilt number
---@field chips number
---@field colour BALATRO.UI.Colour
---@field dark_colour BALATRO.UI.Colour
---@field loc_debuff_lines string[]
---@field name? string
---@field disabled? boolean
---@field loc_name? string
---@field loc_debuff_text? string
---@field dollars number
---@field sound_pings number
---@field debuff BALATRO.Blind.Debuff
---@field pos BALATRO.Node.Point
---@field mult number
---@field discards_sub? number
---@field hands_sub? number
---@field boss? BALATRO.Blind.Boss | boolean
---@field blind_set? boolean
---@field triggered? boolean
---@field prepped? boolean
---@field chip_text string
---@field hands? table<BALATRO.Hand.Type, boolean>
---@field only_hand? boolean | BALATRO.Hand.Type
---@field block_play? boolean
---@field dissolve? boolean | number
---@field dissolve_colours? BALATRO.UI.Colour[]
---@field hovering? boolean
---@field hover_tilt? number
local Blind = {}


---@class BALATRO.Blind.Class : BALATRO.Moveable.Super
---@field change_colour fun(self: BALATRO.Blind, blind_col?: BALATRO.UI.Colour)
---@field set_text fun(self: BALATRO.Blind)
---@field alert_debuff fun(self: BALATRO.Blind, first?: boolean)
---@field get_loc_debuff_text fun(self: BALATRO.Blind): string
---@field defeat fun(self: BALATRO.Blind, silent?: boolean)
---@field get_type fun(self: BALATRO.Blind): BALATRO.Blind.Type?
---@field disable fun(self: BALATRO.Blind)
---@field wiggle fun(self: BALATRO.Blind)
---@field press_play fun(self: BALATRO.Blind): boolean?
---@field drawn_to_hand fun(self: BALATRO.Blind)
---@field stay_flipped fun(self: BALATRO.Blind, area?: BALATRO.CardArea, card?: BALATRO.Card): boolean?
---@field debuff_card fun(self: BALATRO.Blind, card?: BALATRO.Card, from_blind?: boolean)
---@field change_dim fun(self: BALATRO.Blind, w?: number, h?: number)
---@field align fun(self: BALATRO.Blind)
---@field save fun(self: BALATRO.Blind): BALATRO.Blind.SaveTable
---@field load fun(self: BALATRO.Blind, save_table: BALATRO.Blind.SaveTable)


--- Initializes a new Blind object
---@param self BALATRO.Blind
---@param X number | BALATRO.Node.Arguments
---@param Y? number
---@param W? number
---@param H? number
Blind.init = function(self, X, Y, W, H) end


--- Set Blind
---@param self BALATRO.Blind
---@param blind? BALATRO.Prototype.Blind
---@param reset? boolean
---@param silent? boolean
Blind.set_blind = function(self, blind, reset, silent) end


--- Modify the current scoring Hand
---@param self BALATRO.Blind
---@param cards? BALATRO.Card[]
---@param poker_hands? BALATRO.PokerHand[]
---@param text? string
---@param mult number
---@param hand_chips number
---@return number, number, boolean
Blind.modify_hand = function(self, cards, poker_hands, text, mult, hand_chips) end


---comment
---@param self BALATRO.Blind
---@param cards BALATRO.Card[]
---@param hand table<BALATRO.Hand.Type, BALATRO.PokerHand>
---@param handname BALATRO.Hand.Type
---@param check? boolean
Blind.debuff_hand = function(self, cards, hand, handname, check) end


--- `Blind(...)` Creates a new [Blind](lua://BALATRO.Blind) instance
---@param X? number | BALATRO.Node.Arguments
---@param Y? number
---@param W? number
---@param H? number
---@return BALATRO.Blind
_G.Blind = function(X, Y, W, H) end
