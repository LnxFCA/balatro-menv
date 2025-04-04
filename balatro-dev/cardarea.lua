---@meta


---@alias BALATRO.CardArea.Type string | "deck" | "shop" | "discard" | "joker" | "consumeable" | "play" | "voucher" | "title" | "hand"
---@alias BALATRO.CardArea.Sort string | "desc" | "asc" | "suit desc" | "suit asc" | "order"


---@class BALATRO.CardArea.Config.Arg
---@field card_w? number
---@field highlight_limit? number
---@field card_limit? number
---@field type? BALATRO.CardArea.Type
---@field sort? BALATRO.CardArea.Sort
---@field lr_padding? number
---@field collection? boolean


---@class BALATRO.CardArea.SaveTable
---@field cards BALATRO.Card.SaveTable[]
---@field config BALATRO.CardArea.Config


---@class BALATRO.CardArea.Config
---@field card_w? number
---@field highlighted_limit number
---@field card_limit number
---@field temp_limit? number
---@field card_count number
---@field type BALATRO.CardArea.Type
---@field sort BALATRO.CardArea.Sort
---@field lr_padding number
---@field real_card_limit? number
---@field last_poll_size? number
---@field draw_layers? string[]
---@field thin_draw? number
---@field deck_height? number
---@field spread? boolean
---@field collection? boolean
---@field view_deck? boolean


---@class BALATRO.CardArea : BALATRO.CardArea.Class
---@field card_w number
---@field config BALATRO.CardArea.Config
---@field cards BALATRO.Card[]
---@field highlighted BALATRO.Card[]
---@field shuffle_amt number
local CardArea = {}


---@class BALATRO.CardArea.Class : BALATRO.Moveable.Super
---@field change_size fun(self: BALATRO.CardArea, delta?: number)
---@field parse_highlighted fun(self: BALATRO.CardArea)
---@field unhighlight_all fun(self: BALATRO.CardArea)
---@field set_ranks fun(self: BALATRO.CardArea)
---@field align_cards fun(self: BALATRO.CardArea)
---@field hard_set_T fun(self: BALATRO.CardArea, X?: number, Y?: number, W?: number, H?: number)
---@field hard_set_cards fun(self: BALATRO.CardArea)
---@field shuffle fun(self: BALATRO.CardArea, seed?: number | string)
---@field sort fun(self: BALATRO.CardArea, method?: BALATRO.CardArea.Sort)
---@field save fun(self: BALATRO.CardArea): BALATRO.CardArea.SaveTable?
---@field load fun(self: BALATRO.CardArea, save: BALATRO.CardArea.SaveTable)


--- Initializes a new CardArea object
---@param self BALATRO.CardArea
---@param X number | BALATRO.Node.Arguments
---@param Y? number
---@param W? number
---@param H? number
---@param config? BALATRO.CardArea.Config.Arg
CardArea.init = function(self, X, Y, W, H, config) end


--- Emplace a Card object into the CardArea
---@param self BALATRO.CardArea
---@param card BALATRO.Card
---@param location? string | "front"
---@param stay_flipped? boolean
CardArea.emplace = function(self, card, location, stay_flipped) end


--- Remove a matching Card object from the CardArea
---@overload fun(self: BALATRO.CardArea, card: BALATRO.Card, discarded_only?: boolean): BALATRO.Card
---@param self BALATRO.CardArea
---@param card? BALATRO.Card
---@param discarded_only? boolean
---@return BALATRO.Card?
CardArea.remove_card = function(self, card, discarded_only) end


--- Returns whatever the Card object can be highlighted or not
---@param self BALATRO.CardArea
---@param card? BALATRO.Card
CardArea.can_highlight = function(self, card) end


--- Highlight Card object
---@param self BALATRO.CardArea
---@param card BALATRO.Card
---@param silent? boolean
CardArea.add_to_highlighted = function(self, card, silent) end


--- Remove Card object from highlighted
---@param self BALATRO.CardArea
---@param card BALATRO.Card
---@param force? boolean
CardArea.remove_from_highlighted = function(self, card, force) end


--- Draw/Remove Card object from `area` and emplace into this CardArea
---@param self BALATRO.CardArea
---@param area? BALATRO.CardArea
---@param stay_flipped? boolean
---@param discarded_only? boolean
CardArea.draw_card_from = function(self, area, stay_flipped, discarded_only) end


--- Check if object `T` is a CardArea instance
---@param self BALATRO.CardArea
---@param T any
CardArea.is = function(self, T) end


--- `CardArea(...)` Creates a new [CardArea](lua://BALATRO.CardArea) instance.
---@param X number | BALATRO.Node.Arguments
---@param Y? number
---@param W? number
---@param H? number
---@param config? BALATRO.CardArea.Config.Arg
---@return BALATRO.CardArea
_G.CardArea = function(X, Y, W, H, config) end
