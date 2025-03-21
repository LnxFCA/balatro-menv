---@meta


---@class BALATRO.Moveable.Frame : BALATRO.Node.Frame
---@field OLD_MAJOR BALATRO.Moveable
---@field MAJOR BALATRO.Moveable


---@class BALATRO.Moveable.Velocity : BALATRO.Node.Point
---@field scale number
---@field r number
---@field mag number


---@alias BALATRO.Moveable.Role.Type string | "Major" | "Minor"
---@alias BALATRO.Moveable.Role.Bond string | "Strong" | "Weak"
---@alias BALATRO.Moveable.Alignment.Type string | "a"


---@class BALATRO.Moveable.Role
---@field role_type BALATRO.Moveable.Role.Type
---@field offset BALATRO.Node.Point
---@field major? BALATRO.Moveable
---@field draw_major BALATRO.Moveable
---@field xy_bond BALATRO.Moveable.Role.Bond
---@field wh_bond BALATRO.Moveable.Role.Bond
---@field r_bond BALATRO.Moveable.Role.Bond
---@field scale_bond BALATRO.Moveable.Role.Bond


---@class BALATRO.Moveable.Juice
---@field scale number
---@field scale_amt number
---@field r number
---@field r_amt number
---@field start_time number
---@field end_time number
---@field handled_elsewhere? boolean


---@class BALATRO.Moveable.Alignment
---@field type BALATRO.Moveable.Alignment.Type
---@field offset BALATRO.Node.Point
---@field prev_type BALATRO.Moveable.Alignment.Type
---@field prev_offset BALATRO.Node.Point
---@field lr_clamp? number


---@alias BALATRO.Moveable.Pinch { x: boolean, y: boolean }


---@class BALATRO.Moveable.Super : BALATRO.Moveable
---@field __index BALATRO.Moveable
---@field super BALATRO.Moveable
---@field extend fun(self:BALATRO.Moveable): BALATRO.Moveable.Super


---@class BALATRO.Moveable : BALATRO.Moveable.Class
---@field T BALATRO.Node.Transform
---@field VT BALATRO.Node.Transform
---@field FRAME BALATRO.Moveable.Frame
---@field NEW_ALIGNMENT boolean
---@field juice BALATRO.Moveable.Juice
---@field velocity BALATRO.Moveable.Velocity
---@field role BALATRO.Moveable.Role
---@field alignment BALATRO.Moveable.Alignment
---@field pinch BALATRO.Moveable.Pinch
---@field last_moved number
---@field last_aligned number
---@field static_rotation boolean
---@field offset BALATRO.Node.Point
---@field Mid BALATRO.Moveable
---@field shadow_parrallax BALATRO.Node.Point
---@field layered_parallax BALATRO.Node.Point
---@field shadow_height number
Moveable = Node:extend()


---@class BALATRO.Moveable.Class : BALATRO.Node.Super
---@field align_to_major fun(self: BALATRO.Moveable) Aligns the moveable to the major axis.
---@field hard_set_T fun(self: BALATRO.Moveable, X: number, Y: number, W: number, H: number) Sets the T property of the moveable.
---@field hard_set_VT fun(self: BALATRO.Moveable, X: number, Y: number, W: number, H: number) Sets the VT property of the moveable.
---@field drag fun(self: BALATRO.Moveable, X: number, Y: number) Drags the moveable.
---@field juice_up fun(self: BALATRO.Moveable, amount: number, rot_amt) Juices up the moveable.
---@field move_juice fun(self: BALATRO.Moveable, dt: number) Moves the juice of the moveable.
---@field move fun(self: BALATRO.Moveable, dt: number) Moves the moveable.

--- [Moveable](lua://BALATRO.Moveable) instance.
---@class BALATRO.Moveable.Instance : BALATRO.Moveable
---@field __index BALATRO.Moveable


--- `Moveable()` - creates a new instance of [Moveable](lua://BALATRO.Moveable).
---@param X BALATRO.Node.Arguments | number
---@param Y number
---@param W number
---@param H number
---@return BALATRO.Moveable.Instance
Moveable = function(X, Y, W, H) end


--- Extends the class with the child class.
---@param self BALATRO.Node
---@return BALATRO.Moveable
function Node.extend(self) end

local Node = Object:extend()


---@param self BALATRO.Node
---@param args BALATRO.Node.Arguments
function Node.init(self, args) end


---@alias Moveable BALATRO.Moveable


---@class BALATRO.Moveable.set_alignment.Args : BALATRO.Moveable.Role, BALATRO.Moveable.Alignment
---@field wh_bond? BALATRO.Moveable.Role.Bond
---@field r_bond? BALATRO.Moveable.Role.Bond
---@field scale_bond? BALATRO.Moveable.Role.Bond
---@field lr_clamp? number


--- Sets the alignment of the moveable.
---@param self BALATRO.Moveable
---@param args { }
function Moveable.set_alignment(self, args) end
