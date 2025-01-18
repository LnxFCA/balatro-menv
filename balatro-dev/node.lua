---@meta

BALATRO_T = {}


---@class BALATRO_T.Node.Transform
---@field x number X-coordinate
---@field y number Y-coordinate
---@field w number Width
---@field h number Height
---@field r number Rotation angle (default: 0)
---@field scale number Scaling factor (default: 1)

---@class BALATRO_T.NodeArgs
---@field T BALATRO_T.Node.Transform Transform initializer, with keys for position, size, and rotation
---@field container BALATRO_T.Node? Optional container for this Node, defaults to G.ROOM

---@class BALATRO_T.Node : BALATRO_T.ObjectClass
---@field T BALATRO_T.Node.Transform Transform data for this Node
---@field CT BALATRO_T.Node.Transform Collision transform
---@field click_offset {x: number, y: number} Offset for click interactions
---@field hover_offset {x: number, y: number} Offset for hover interactions
---@field created_on_pause boolean Whether this Node was created during a pause
---@field ID number Unique identifier for the Node
---@field FRAME {DRAW: number, MOVE: number} Frame tracking for optimizations
---@field states table State flags for visibility, collision, interaction, etc.
---@field container BALATRO_T.Node Parent container of this Node
---@field children BALATRO_T.Node[] Child Nodes under this Node
---@field ARGS table Argument reuse table to reduce garbage generation
---@field RETS table Return value reuse table
---@field config table Metadata for this Node
BALATRO_T.Node = {}

---Initializes a new Node instance.
---@param args BALATRO_T.NodeArgs Initialization arguments
function BALATRO_T.Node:init(args) end

---Draws a bounding rectangle for debugging purposes.
function BALATRO_T.Node:draw_boundingrect() end

---Draws the Node and its children.
function BALATRO_T.Node:draw() end

---Determines if a point collides with the Node.
---@param point {x: number, y: number} The point to check collision with
---@return boolean Whether the point collides with the Node
function BALATRO_T.Node:collides_with_point(point) end

---Sets the offset for click or hover interactions.
---@param point {x: number, y: number} Point to set the offset for
---@param type "Click"|"Hover" Type of offset to set
function BALATRO_T.Node:set_offset(point, type) end

---Handles drag operations for the Node.
function BALATRO_T.Node:drag() end

---Determines if the Node can be dragged.
---@return BALATRO_T.Node|nil The Node itself if draggable, otherwise nil
function BALATRO_T.Node:can_drag() end

---Stops drag operations and removes any associated popups.
function BALATRO_T.Node:stop_drag() end

---Handles hover interactions for the Node.
function BALATRO_T.Node:hover() end

---Stops hover interactions and removes any associated popups.
function BALATRO_T.Node:stop_hover() end

---Sets the position of the focused cursor for this Node.
---@return number, number The x and y coordinates for the cursor
function BALATRO_T.Node:put_focused_cursor() end

---Sets the container of the Node and its children.
---@param container BALATRO_T.Node The new container
function BALATRO_T.Node:set_container(container) end

---Applies container transformations before drawing.
function BALATRO_T.Node:translate_container() end

---Removes the Node and all its children.
function BALATRO_T.Node:remove() end

---Calculates the squared distance to the center of another Node.
---@param other_node BALATRO_T.Node The other Node
---@return number The squared distance
function BALATRO_T.Node:fast_mid_dist(other_node) end

---Prototype for a release action when the cursor is released on the Node.
---@param dragged any Dragged object
function BALATRO_T.Node:release(dragged) end

---Prototype for a click action on the Node.
function BALATRO_T.Node:click() end

---Prototype for animations during frame updates.
function BALATRO_T.Node:animate() end

---Prototype for logic updates each frame.
---@param dt number Delta time
function BALATRO_T.Node:update(dt) end
