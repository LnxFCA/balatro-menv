---@meta


---@alias BALATRO.Sprite.Shader.Type string | "dissolve" | "vortex"
---@alias BALATRO.Sprite.Position BALATRO.Node.Point | { v?: number }


---@class BALATRO.Sprite.DrawStep.Send
---@field name? string
---@field val? any
---@field func? function
---@field ref_table? table
---@field ref_value? string


---@class BALATRO.Sprite.DrawStep
---@field shader? BALATRO.Sprite.Shader.Type
---@field shadow_height? number
---@field send? BALATRO.Sprite.DrawStep.Send[]
---@field no_tilt? boolean
---@field other_obj? BALATRO.UI.Object
---@field ms? number
---@field mr? number
---@field mx? number
---@field my? number


---@class BALATRO.Sprite : BALATRO.Sprite.Class
---@field atlas BALATRO.Atlas.Asset
---@field scale BALATRO.Node.Point
---@field scale_mag number
---@field sprite_pos BALATRO.Node.Point
---@field sprite_pos_copy BALATRO.Node.Point
---@field sprite love.Quad
---@field image_dims table<number, number, number>
---@field draw_steps BALATRO.Sprite.DrawStep[]
---@field video? love.Drawable | love.Texture
---@field video_dims? BALATRO.UI.Resolution
---@field shader_tab? boolean
---@field float? boolean
---@field hovering? boolean
---@field hover_tilt? number
---@field ability_UIBox_table? BALATRO.Card.AbilityUIBoxTable
---@field dissolve_colours? BALATRO.UI.Colour[]
---@field dissolve? number
local Sprite = {}


---@class BALATRO.Sprite.Super : BALATRO.Sprite
---@field __index BALATRO.Sprite
---@field super BALATRO.Sprite
---@field extend fun(self: BALATRO.Sprite): BALATRO.Sprite.Super


---@class BALATRO.Sprite.Class : BALATRO.Moveable.Super
---@field reset fun(self: BALATRO.Sprite)
---@field set_sprite_pos fun(self: BALATRO.Sprite, pos?: BALATRO.Sprite.Position)
---@field get_pos_pixel fun(self: BALATRO.Sprite): number[]
---@field get_image_dims fun(self: BALATRO.Sprite): number[]
---@field define_draw_steps fun(self: BALATRO.Sprite, steps: BALATRO.Sprite.DrawStep[])
---@field draw_self fun(self: BALATRO.Sprite, overlay?: BALATRO.UI.Colour)
---@field draw fun(self: BALATRO.Sprite, overlay?: BALATRO.UI.Colour)
---@field draw_from fun(self: BALATRO.Sprite, other_obj: BALATRO.UI.Object, ms?: number, mr?: number, mx?: number, my?: number)
---@field hover fun(self: BALATRO.Sprite)
---@field stop_hover fun(self: BALATRO.Sprite)


--- Initializes a new Sprite object
---@param self BALATRO.Sprite
---@param X number | BALATRO.Node.Arguments
---@param Y? number
---@param W? number
---@param H? number
---@param new_sprite_atlas BALATRO.Atlas
---@param sprite_pos BALATRO.Sprite.Position
Sprite.init = function(self, X, Y, W, H, new_sprite_atlas, sprite_pos) end


--- Draw sprite shader
---@param self BALATRO.Sprite
---@param shader? BALATRO.Sprite.Shader.Type
---@param shadow_height? number
---@param send? BALATRO.Sprite.DrawStep.Send[]
---@param no_tilt? boolean
---@param other_obj? BALATRO.Sprite
---@param ms? number
---@param mr? number
---@param mx? number
---@param my? number
---@param custom_shader? boolean
---@param tilt_shadow? number
Sprite.draw_shader = function(self, shader, shadow_height, send, no_tilt, other_obj, ms, mr, mx, my, custom_shader, tilt_shadow) end


--- `Sprite()` - Creates a new [Sprite](lua://BALATRO.Sprite) object 
---@param X number | BALATRO.Node.Arguments
---@param Y? number
---@param W? number
---@param H? number
---@param new_sprite_atlas BALATRO.Atlas.Asset
---@param sprite_pos BALATRO.Sprite.Position
---@return BALATRO.Sprite
_G.Sprite = function(X, Y, W, H, new_sprite_atlas, sprite_pos) end
