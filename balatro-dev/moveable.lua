---@meta


---@class BALATRO.Moveable.ARGS.get_major
---@field major BALATRO.UIObject
---@field offset BALATRO.Node.Point


---@class BALATRO.Moveable.FRAME : BALATRO.UI.FRAME
---@field OLD_MAJOR BALATRO.UIObject
---@field MAJOR BALATRO.UIObject


---@class BALATRO.Moveable.Velocity : BALATRO.Node.Point
---@field scale number
---@field r number
---@field mag number


---@alias BALATRO.Moveable.Role.Type string | "Major" | "Minor" | "Glued"
---@alias BALATRO.Moveable.Role.Bond string | "Strong" | "Weak"
---@alias BALATRO.Moveable.Alignment.Type string | 'a' | 'm' | 'c' | 'b' | 't' | 'l' | 'r' | 'i'


---@class BALATRO.Moveable.Alignment.TypeList
---@field a boolean
---@field m? integer
---@field c? integer
---@field b? integer
---@field t? integer
---@field l? integer
---@field r? integer
---@field i? integer


---@class BALATRO.Moveable.Role.Common
---@field major? BALATRO.UIObject
---@field xy_bond? BALATRO.Moveable.Role.Bond
---@field wh_bond? BALATRO.Moveable.Role.Bond
---@field r_bond? BALATRO.Moveable.Role.Bond
---@field scale_bond? BALATRO.Moveable.Role.Bond
---@field offset? BALATRO.Node.Point


---@class BALATRO.Moveable.Role
---@field role_type BALATRO.Moveable.Role.Type
---@field offset BALATRO.Node.Point
---@field major? BALATRO.UIObject
---@field draw_major BALATRO.UIObject
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
---@field type_list? BALATRO.Moveable.Alignment.TypeList


---@alias BALATRO.Moveable.Pinch { x: boolean, y: boolean }


---@class BALATRO.Moveable.Super : BALATRO.Moveable
---@field __index BALATRO.Moveable
---@field super BALATRO.Moveable
---@field extend fun(self:BALATRO.Moveable): BALATRO.Moveable.Super


---@class BALATRO.Moveable : BALATRO.Moveable.Class
---@field ARGS BALATRO.ARGS
---@field FRAME BALATRO.Moveable.FRAME
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
---@field children BALATRO.UIObject[] | table<string, BALATRO.UIObject>
---@field STATIONARY? boolean
---@field config BALATRO.UI.Config
---@field temp_offs BALATRO.Node.Point
---@field major? BALATRO.UIObject
---@field zoom? boolean
local Moveable = {}


---@class BALATRO.Moveable.Class : BALATRO.Node.Super
---@field init fun(self: BALATRO.Moveable, X: BALATRO.Node.Arguments | number, Y?: number, W?: number, H?: number) Initializes the moveable.
---@field draw fun(self: BALATRO.Moveable) Draws the moveable.
---@field align_to_major fun(self: BALATRO.Moveable) Aligns the moveable to the major axis.
---@field hard_set_T fun(self: BALATRO.Moveable, X: number, Y: number, W: number, H: number) Sets the T property of the moveable.
---@field hard_set_VT fun(self: BALATRO.Moveable) Sets the VT property of the moveable.
---@field drag fun(self: BALATRO.Moveable, offset?: BALATRO.Node.Point) Drags the moveable.
---@field juice_up fun(self: BALATRO.Moveable, amount?: number, rot_amt?: number) Juices up the moveable.
---@field move_juice fun(self: BALATRO.Moveable, dt: number) Moves the juice of the moveable.
---@field move fun(self: BALATRO.Moveable, dt: number) Moves the moveable.
---@field lr_clamp fun(self: BALATRO.Moveable)
---@field glue_to_major fun(self: BALATRO.Moveable, major_tab: BALATRO.UIObject)
---@field move_with_major fun(self: BALATRO.Moveable, dt: number)
---@field move_xy fun(self: BALATRO.Moveable, dt: number) Moves the moveable in the x and y direction.
---@field move_scale fun(self: BALATRO.Moveable, dt: number) Moves the moveable in the scale direction.
---@field move_wh fun(self: BALATRO.Moveable, dt: number) Moves the moveable in the width and height direction.
---@field move_r fun(self: BALATRO.Moveable, dt: number, vel: BALATRO.Moveable.Velocity) Moves the moveable in the rotation direction.
---@field calculate_parrallax fun(self: BALATRO.Moveable) Calculates the shadow parrallax of the moveable.
---@field get_major fun(self: BALATRO.Moveable): BALATRO.UIObject | BALATRO.Moveable.ARGS.get_major
---@field remove fun(self: BALATRO.Moveable) Removes the moveable.


---@alias Moveable BALATRO.Moveable


---@class BALATRO.Moveable.MWM
---@field rotated_offset BALATRO.Node.Point | { x?: number, y?: number }
---@field angles table
---@field WH table
---@field offs BALATRO.Node.Point | { x?: number, y?: number }


---@class BALATRO.Moveable.set_alignment.Args : BALATRO.Moveable.Role.Common
---@field bond? BALATRO.Moveable.Role.Bond
---@field lr_clamp? number
---@field type? BALATRO.Moveable.Alignment.Type


--- Sets the alignment of the moveable.
---@param self BALATRO.Moveable
---@param args? BALATRO.Moveable.set_alignment.Args | BALATRO.UIBox.Config
Moveable.set_alignment = function(self, args) end


---@class BALATRO.Moveable.set_role.Args : BALATRO.Moveable.Role.Common
---@field role_type? BALATRO.Moveable.Role.Type
---@field draw_major? BALATRO.UIObject


--- Sets the role of the moveable.
---@param self BALATRO.Moveable
---@param args BALATRO.Moveable.set_role.Args
Moveable.set_role = function(self, args) end


--- `Moveable()` - Creates a new instance of [Moveable](lua://BALATRO.Moveable).
---@param X number | BALATRO.Node.Arguments
---@param Y? number
---@param W? number
---@param H? number
---@return BALATRO.Moveable
_G.Moveable = function(X, Y, W, H) end
_G.Moveable = Moveable
