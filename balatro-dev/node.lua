---@meta


--- Node transformation properties.
---@class BALATRO.Node.Transform
---@field x number
---@field y number
---@field w number
---@field h number
---@field r number
---@field scale number


--- Node instance arguments.
---@class BALATRO.Node.Arguments
---@field T? number[] | BALATRO.Node.Transform
---@field container? BALATRO.Node


--- Node point.
---@class BALATRO.Node.Point
---@field x number
---@field y number


--- Node rotation properties.
---@class BALATRO.Node.Rotation
---@field cos number
---@field sin number


--- Node offset type.
---@alias BALATRO.Node.OffsetType "Click" | "Hover"


--- Node FRAME values.
---@class BALATRO.Node.Frame
---@field DRAW number
---@field MOVE number


--- Node single state.
---@class BALATRO.Node.State
---@field can boolean
---@field is boolean


--- Node states.
---@class BALATRO.Node.States
---@field visible boolean
---@field collide BALATRO.Node.State
---@field focus BALATRO.Node.State
---@field hover BALATRO.Node.State
---@field click BALATRO.Node.State
---@field drag BALATRO.Node.State
---@field release_on BALATRO.Node.State


---@class BALATRO.ARGS.prep_shader
---@field cursor_pos? number[]


---@class BALATRO.ARGS.area_types
---@field discard number
---@field voucher number
---@field play number
---@field consumeable number
---@field title number
---@field title_2 number


--- Node represent any game object that needs to have some transform available in the game itself.
--- Everything that you see in the game is a Node, and some invisible things like the G.ROOM are also
--- represented here.
---@class BALATRO.Node : BALATRO.Node.Class
---@field __index BALATRO.Node
---@field ARGS BALATRO.ARGS
---@field RETS BALATRO.RETS
---@field T BALATRO.Node.Transform
---@field VT BALATRO.Node.Transform
---@field CT BALATRO.Node.Transform
---@field config BALATRO.UI.Definition.Config
---@field click_offset BALATRO.Node.Point
---@field hover_offset BALATRO.Node.Point
---@field created_on_pause boolean
---@field ID number
---@field FRAME BALATRO.Node.Frame
---@field states BALATRO.Node.States
---@field container BALATRO.Node
---@field children table<string, BALATRO.Node> | BALATRO.Node[]
---@field under_overlay boolean
---@field DEBUG_VALUE? string
---@field CALCING? boolean
---@field REMOVED? boolean
---@field jiggle? number
local Node = {}


---@class BALATRO.Node.Super : BALATRO.Node
---@field __index BALATRO.Node Metatable index pointing to the Node class itself, used for inheritance.
---@field super BALATRO.Node Reference to the parent class, used for accessing methods and properties of the parent class.


---@class BALATRO.Node.Class : BALATRO.Object.Super
---@field init fun(self: BALATRO.Node, args: BALATRO.Node.Arguments) Initializes a new instance of Node.
---@field collides_with_point fun(self: BALATRO.Node, point: BALATRO.Node.Point | BALATRO.Node.Transform): boolean | nil Checks if the node collides with a point.
---@field draw fun(self: BALATRO.Node) Draws the node and its children.
---@field draw_boundingrect fun(self: BALATRO.Node) Draws the bounding rectangle of the node.
---@field set_offset fun(self: BALATRO.Node, point: BALATRO.Node.Point, type: BALATRO.Node.OffsetType) Sets the offset of the node.
---@field drag fun(self: BALATRO.Node) Drags the node.
---@field can_drag fun(self: BALATRO.Node): BALATRO.Node? Checks if the node can be dragged.
---@field stop_drag fun(self: BALATRO.Node) Stops dragging the node.
---@field hover fun(self: BALATRO.Node) Node hover.
---@field stop_hover fun(self: BALATRO.Node) Stops hovering the node.
---@field put_focused_cursor fun(self: BALATRO.Node): number, number Puts the focused cursor on the node.
---@field set_container fun(self: BALATRO.Node, container: BALATRO.Node) Sets the container of the node.
---@field translate_container fun(self: BALATRO.Node) Translates the container of the node.
---@field remove fun(self: BALATRO.Node) Removes the node.
---@field fast_mid_dist fun(self: BALATRO.Node, other_node: BALATRO.Node): number Calculates the fast mid distance between the node and a point.
---@field release fun(self: BALATRO.Node, released?: BALATRO.Node) Releases the node - prototype.
---@field click fun(self: BALATRO.Node) Node click - prototype.
---@field animate fun(self: BALATRO.Node) Animates the node - prototype.
---@field update fun(self: BALATRO.Node, dt: number) Updates the node - prototype.
---@field extend fun(self: BALATRO.Node): BALATRO.Node.Super Extends the class with the child class.


--- `Node()` - Creates a new instance of [Node](lua://BALATRO.Node).
---@param args BALATRO.Node.Arguments
---@return BALATRO.Node
_G.Node = function(args) end
