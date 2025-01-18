---@meta

BALATRO_T = {}


---@class BALATRO_T.Moveable : Node
---@field VT BALATRO_T.Node.Transform Visible transform, easing towards `T`
---@field velocity {x: number, y: number, r: number, scale: number, mag: number} Velocity used for easing movement
---@field role {role_type: string, offset: {x: number, y: number}, major: BALATRO_T.Moveable?, draw_major: Moveable, xy_bond: string, wh_bond: string, r_bond: string, scale_bond: string} Role describing the hierarchy and movement
---@field alignment {type: string, offset: {x: number, y: number}, prev_type: string, prev_offset: {x: number, y: number}, lr_clamp: boolean?} Alignment details
---@field pinch {x: boolean, y: boolean} Determines if width or height of `VT` eases to 0
---@field last_moved number Last timestamp this Moveable was moved
---@field last_aligned number Last timestamp this Moveable was aligned
---@field shadow_parrallax {x: number, y: number} Parallax values for shadow effects
---@field layered_parallax {x: number, y: number} Parallax values for layers
---@field shadow_height number Shadow height for rendering
---@field juice {scale: number, scale_amt: number, r: number, r_amt: number, start_time: number, end_time: number} Animation "juice" effects
BALATRO_T.Moveable = {}

---Initializes a new Moveable instance.
---@param X number|table X-coordinate or initialization table
---@param Y number? Y-coordinate
---@param W number? Width
---@param H number? Height
function BALATRO_T.Moveable:init(X, Y, W, H) end

---Draws the Moveable, including its bounding rectangle.
function BALATRO_T.Moveable:draw() end

---Sets the alignment of the Moveable using roles.
---@param args {major: BALATRO_T.Moveable?, bond: string?, offset: {x: number, y: number}?, type: string?} Alignment arguments
function BALATRO_T.Moveable:set_alignment(args) end

---Aligns the Moveable to its major role.
function BALATRO_T.Moveable:align_to_major() end

---Directly sets the `T` transform values.
---@param X number X-coordinate
---@param Y number Y-coordinate
---@param W number Width
---@param H number Height
function BALATRO_T.Moveable:hard_set_T(X, Y, W, H) end

---Directly sets `VT` to match `T`.
function BALATRO_T.Moveable:hard_set_VT() end

---Handles drag operations for the Moveable.
---@param offset {x: number, y: number}? Offset for the drag operation
function BALATRO_T.Moveable:drag(offset) end

---Applies a "juice" animation effect to the Moveable.
---@param amount number? Scale amount
---@param rot_amt number? Rotation amount
function BALATRO_T.Moveable:juice_up(amount, rot_amt) end

---Moves the "juice" animation over time.
---@param dt number Delta time
function BALATRO_T.Moveable:move_juice(dt) end

---Updates the position, rotation, and scale of the Moveable.
---@param dt number Delta time
function BALATRO_T.Moveable:move(dt) end

---Clamps the Moveable within the left-right bounds of the room.
function BALATRO_T.Moveable:lr_clamp() end

---Glues the Moveable to a major role.
---@param major_tab BALATRO_T.Moveable The major Moveable to glue to
function BALATRO_T.Moveable:glue_to_major(major_tab) end

---Moves the Moveable relative to its major role.
---@param dt number Delta time
function BALATRO_T.Moveable:move_with_major(dt) end

---Updates the x and y position of the Moveable.
---@param dt number Delta time
function BALATRO_T.Moveable:move_xy(dt) end

---Updates the scale of the Moveable.
---@param dt number Delta time
function BALATRO_T.Moveable:move_scale(dt) end

---Updates the width and height of the Moveable.
---@param dt number Delta time
function BALATRO_T.Moveable:move_wh(dt) end

---Updates the rotation of the Moveable.
---@param dt number Delta time
---@param vel {x: number, y: number, r: number, scale: number, mag: number} Velocity for rotation
function BALATRO_T.Moveable:move_r(dt, vel) end

---Calculates the shadow parallax values.
function BALATRO_T.Moveable:calculate_parrallax() end

---Sets the role for the Moveable.
---@param args {role_type: string?, offset: {x: number, y: number}?, major: BALATRO_T.Moveable?, xy_bond: string?, wh_bond: string?, r_bond: string?, scale_bond: string?, draw_major: Moveable?} Role arguments
function BALATRO_T.Moveable:set_role(args) end

---Retrieves the major Moveable for this instance.
---@return {major: BALATRO_T.Moveable, offset: {x: number, y: number}} Information about the major Moveable
function BALATRO_T.Moveable:get_major() end

---Removes the Moveable from global lists and cleans up its children.
function BALATRO_T.Moveable:remove() end
