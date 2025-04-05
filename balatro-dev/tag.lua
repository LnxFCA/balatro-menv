---@meta


---@class BALATRO.Tag.Ability
---@field orbital_hand BALATRO.Hand.Type
---@field blind_type? BALATRO.Blind.Type


---@class BALATRO.Tag.SaveTable
---@field key string
---@field tally number
---@field ability BALATRO.Tag.Ability


---@class BALATRO.Tag : BALATRO.Tag.Class
---@field key string
---@field config BALATRO.Prototype.Tag.Config
---@field pos BALATRO.Node.Point
---@field name string
---@field tally number
---@field triggered boolean
---@field ability BALATRO.Tag.Ability
---@field ID number
---@field HUD_tag BALATRO.UIBox
---@field hide_ability? boolean
---@field tag_sprite? BALATRO.Sprite
local Tag = {}


---@class BALATRO.Tag.Class : BALATRO.Object.Super
---@field nope fun(self: BALATRO.Tag)
---@field yep fun(self: BALATRO.Tag, message?: string, colour?: BALATRO.UI.Colour, func?: function)
---@field set_ability fun(self: BALATRO.Tag)
---@field apply_to_run fun(self: BALATRO.Tag, context: BALATRO.Calc.Tag): BALATRO.Calc.Tag.Eval?
---@field save fun(self: BALATRO.Tag): BALATRO.Tag.SaveTable
---@field load fun(self: BALATRO.Tag, save_table: BALATRO.Tag.SaveTable)
---@field generate_UI fun(self: BALATRO.Tag, size?: number): BALATRO.UI.Node, BALATRO.Sprite
---@field juice_up fun(self: BALATRO.Tag, scale?: number, rotation?: number)
---@field get_uibox_table fun(self: BALATRO.Tag, tag_sprite?: BALATRO.Sprite): BALATRO.Sprite
---@field remove_from_game fun(self: BALATRO.Tag)
---@field remove fun(self: BALATRO.Tag)


--- Initializes a new `Tag` instance
---@param self BALATRO.Tag
---@param tag string
---@param for_collection? boolean
---@param blind_type? BALATRO.Blind.Type
Tag.init = function(self, tag, for_collection, blind_type) end


--- Check if `T` is an instance of [Tag](lua://BALATRO.Tag)
---@param self BALATRO.Tag
---@param T any
Tag.is = function(self, T) end


--- `Tag()` - Creates a new [Tag](lua://BALATRO.Tag) object
---@param tag string
---@param for_collection? boolean
---@param blind_type? BALATRO.Blind.Type
---@return BALATRO.Tag
_G.Tag = function(tag, for_collection, blind_type) end
