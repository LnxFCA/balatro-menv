---@meta


---@alias BALATRO.Tag.Key string
---|"tag_uncommon"
---|"tag_rare"
---|"tag_negative"
---|"tag_foil"
---|"tag_holo"
---|"tag_polychrome"
---|"tag_investment"
---|"tag_voucher"
---|"tag_boss"
---|"tag_standard"
---|"tag_charm"
---|"tag_meteor"
---|"tag_buffoon"
---|"tag_handy"
---|"tag_garbage"
---|"tag_ethereal"
---|"tag_coupon"
---|"tag_double"
---|"tag_juggle"
---|"tag_d_six"
---|"tag_top_up"
---|"tag_skip"
---|"tag_orbital"
---|"tag_economy"



---@class BALATRO.Tag.Ability
---@field orbital_hand BALATRO.Hand.Type
---@field blind_type? BALATRO.Blind.Type


---@class BALATRO.Tag : BALATRO.Tag.Class
---@field key BALATRO.Tag.Key
---@field config BALATRO.Prototype.Tag.Config
---@field pos BALATRO.Node.Point
---@field name string
---@field tally number
---@field triggered boolean
---@field ability BALATRO.Tag.Ability
---@field ID number
---@field HUD_tag BALATRO.UIBox
local Tag = {}


---@class BALATRO.Tag.Class : BALATRO.Object.Super
---@field nope fun(self: BALATRO.Tag)
---@field yep fun(self: BALATRO.Tag, message?: string, colour?: BALATRO.UI.Colour, func?: function)
---@field set_ability fun(self: BALATRO.Tag)
---@field apply_to_run fun(self: BALATRO.Tag, context: BALATRO.Calc.Context)


--- Initializes a new `Tag` instance
---@param self BALATRO.Tag
---@param tag BALATRO.Tag.Key
---@param for_collection? boolean
---@param blind_type? BALATRO.Blind.Type
Tag.init = function(self, tag, for_collection, blind_type) end


--- `Tag()` - Creates a new [Tag](lua://BALATRO.Tag) object
---@param tag BALATRO.Tag.Key
---@param for_collection? boolean
---@param blind_type? BALATRO.Blind.Type
_G.Tag = function(tag, for_collection, blind_type) end
