---@meta


---@class BALATRO.AnimatedSprite.Animation
---@field x number
---@field y number
---@field frames? number
---@field current number
---@field w number
---@field h number


---@class BALATRO.AnimatedSprite.CurrentAnimation : BALATRO.AnimatedSprite.Animation
---@field x? number
---@field y? number


---@class BALATRO.AnimatedSprite : BALATRO.AnimatedSprite.Class
---@field atlas BALATRO.Atlas.Animation
---@field animation BALATRO.AnimatedSprite.Animation
---@field frame_offset number
---@field current_animation BALATRO.AnimatedSprite.CurrentAnimation
---@field offset_seconds number
---@field float? boolean
local Sprite = {}


---@class BALATRO.AnimatedSprite.Class : BALATRO.Sprite.Super
---@field rescale fun(self: BALATRO.AnimatedSprite)
---@field draw_self fun(self: BALATRO.AnimatedSprite)
---@field animate fun(self: BALATRO.AnimatedSprite, dt?: number)


--- `AnimatedSprite()` - Creates a new [AnimatedSprite](lua://BALATRO.AnimatedSprite) object
---@param X number | BALATRO.Node.Arguments
---@param Y? number
---@param W? number
---@param H? number
---@param new_sprite_atlas BALATRO.Atlas.Animation
---@param sprite_pos BALATRO.Sprite.Position
---@return BALATRO.AnimatedSprite
_G.AnimatedSprite = function(X, Y, W, H, new_sprite_atlas, sprite_pos) end
