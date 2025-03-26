---@meta


---@class BALATRO.Card_Character.Arguments
---@field x? number
---@field y? number
---@field w? number
---@field h? number
---@field center? BALATRO.Center.Joker


---@class BALATRO.Card_Character.Children
---@field card? BALATRO.Card
---@field particles? BALATRO.Particles
---@field button? BALATRO.UIBox
---@field speech_bubble? BALATRO.UIBox
---@field highlight? BALATRO.UIElement | BALATRO.UIBox


---@class BALATRO.Card_Character.Config
---@field button_align? BALATRO.UIBox.Config
---@field args BALATRO.Card_Character.Arguments
---@field speech_bubble_align? BALATRO.UIBox.Config


---@class BALATRO.Card_Character : BALATRO.Card_Character.Class
---@field config BALATRO.Card_Character.Config
---@field children BALATRO.Card_Character.Children
---@field talking? boolean
---@field last_said? number
---@field highlight? BALATRO.UIElement | BALATRO.UIBox
local Card_Character = {}


---@class BALATRO.Card_Character.Class : BALATRO.Moveable.Super
---@field init fun(self: BALATRO.Card_Character, args: BALATRO.Card_Character.Arguments)
---@field align fun(self: BALATRO.Card_Character)
---@field remove_button fun(self: BALATRO.Card_Character)
---@field remove_speech_bubble fun(self: BALATRO.Card_Character)
---@field say_stuff fun(self: BALATRO.Card_Character, n: number, not_first?: boolean)
---@field draw fun(self?: BALATRO.Card_Character, _?: number)


--- Update `Card_Character` button
---@param self BALATRO.Card_Character
---@param button string
---@param func? string
---@param colour? BALATRO.UI.Colour
---@param update_func? string
---@param snap_to? boolean
---@param y_offset? number
Card_Character.add_button = function(self, button, func, colour, update_func, snap_to, y_offset) end


--- Add a speech bubble to `Card_Character` object
---@param self BALATRO.Card_Character
---@param text_key string
---@param align BALATRO.UI.Align
---@param loc_vars any
Card_Character.add_speech_bubble = function(self, text_key, align, loc_vars) end


--- `Card_Character()` - Creates a new [Card_Character](lua://BALATRO.Card_Character) object
---@param args BALATRO.Card_Character.Arguments
---@return BALATRO.Card_Character
_G.Card_Character = function(args) end
