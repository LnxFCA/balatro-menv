---@meta


---@class BALATRO.Particles.Particle
---@field draw boolean
---@field dir number
---@field facing number
---@field size number
---@field age number
---@field velocity number
---@field r_vel number
---@field e_prev number
---@field e_curr number
---@field scale number
---@field visible_scale number
---@field time number
---@field colour BALATRO.UI.Colour
---@field offset BALATRO.Node.Point
---@field e_vel? number


---@class BALATRO.Particles.Config.Arg
---@field fill? boolean
---@field padding? number
---@field attach? BALATRO.UIObject
---@field timer? number
---@field lifespan? number
---@field timer_type? string | "REAL"
---@field speed? number
---@field max? number
---@field pulse_max? number
---@field vel_variation? number
---@field scale? number
---@field initialize? boolean
---@field colours? BALATRO.UI.Colour[]


---@class BALATRO.Particles : BALATRO.Particles.Class
---@field fill? boolean
---@field padding number
---@field parent BALATRO.UIObject
---@field timer number
---@field timer_type string | "REAL"
---@field last_real_time number
---@field last_drawn number
---@field lifespan number
---@field fade_alpha number
---@field speed number
---@field max number
---@field pulse_max number
---@field pulsed number
---@field vel_variation number
---@field particles BALATRO.Particles.Particle[]
---@field scale number
---@field colours BALATRO.UI.Colour[]
local Particles = {}


---@class BALATRO.Particles.Class : BALATRO.Moveable.Super
---@field fade fun(self: BALATRO.Particles, delay?: number, to?: number)
---@field draw fun(self: BALATRO.Particles, alpha?: number)


--- Initializes a new [Particles](lua://BALATRO.Particles) object.
---@param self BALATRO.Particles
---@param X number | BALATRO.Node.Arguments
---@param Y number
---@param W number
---@param H number
---@param config? BALATRO.Particles.Config.Arg
Particles.init = function(self, X, Y, W, H, config) end


--- `Particles()` Creates a new [Particles](lua://BALATRO.Particles) object.
---@param X any
---@param Y any
---@param W any
---@param H any
---@param config BALATRO.Particles.Config.Arg
---@return BALATRO.Particles
_G.Particles = function(X, Y, W, H, config) end
