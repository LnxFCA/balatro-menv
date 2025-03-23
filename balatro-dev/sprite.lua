---@meta


---@alias BALATRO.Sprite.DrawStep.Shader string | "dissolve" | "vortex"

---@class BALATRO.Sprite.Atlas
---@field name string
---@field py number
---@field px number
---@field image love.Image


---@class BALATRO.Sprite.DrawStep.Send
---@field name? string
---@field val? any
---@field func? function
---@field ref_table? table
---@field ref_value? string


---@class BALATRO.Sprite.DrawStep
---@field shader? BALATRO.Sprite.DrawStep.Shader
---@field shadow_height? number
---@field send? BALATRO.Sprite.DrawStep.Send[]
---@field no_tilt? boolean
---@field other_obj? BALATRO.UI.Object
---@field ms? number
---@field mr? number
---@field mx? number
---@field my? number


---@class BALATRO.Sprite : BALATRO.Sprite.Class
---@field atlas BALATRO.Sprite.Atlas
---@field scale BALATRO.Node.Point
---@field scale_mag number
---@field sprite_pos BALATRO.Node.Point
---@field sprite_pos_copy BALATRO.Node.Point
---@field sprite love.Quad
---@field image_dims number[]
---@field draw_steps BALATRO.Sprite.DrawStep[]
local Sprite = {}


---@class BALATRO.Sprite.Class : BALATRO.Moveable.Super
---@field init fun(self: BALATRO.Sprite, X: number, Y: number, W: number, H: number, atlas: BALATRO.Sprite.Atlas, pos: BALATRO.Node.Point)
---@field reset fun(self: BALATRO.Sprite)
---@field set_sprite_pos fun(self: BALATRO.Sprite, pos?: BALATRO.Node.Point | { v?: number })
---@field get_pos_pixel fun(self: BALATRO.Sprite): number[]
---@field get_image_dims fun(self: BALATRO.Sprite): number[]
---@field define_draw_steps fun(self: BALATRO.Sprite, steps: BALATRO.Sprite.DrawStep[])



---@alias BALATRO.Sprite.Callable BALATRO.Sprite | fun(X: number, Y: number, W: number, H: number, atlas: BALATRO.Sprite.Atlas, pos?: (BALATRO.Node.Point | false)): BALATRO.Sprite

--- Draw sprite shader
---@param self BALATRO.Sprite
---@param shader BALATRO.Sprite.DrawStep.Shader
---@param sheight number
---@param send BALATRO.Sprite.DrawStep.Send[]
---@param no_tilt boolean
---@param other_obj BALATRO.UI.Object
---@param ms number
---@param mr number
---@param mx number
---@param my number
---@param custom_shader BALATRO.Sprite.DrawStep.Shader
---@param tilt_shadow number
function Sprite.draw_shader(self, shader, sheight, send, no_tilt, other_obj, ms, mr, mx, my, custom_shader, tilt_shadow) end
