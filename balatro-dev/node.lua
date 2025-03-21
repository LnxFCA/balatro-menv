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
---@field container? BALATRO.Node.Instance


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


--- Node configuration.
---@class BALATRO.Node.Config
---@field d_hpopup BALATRO.UIBox.Instance
---@field h_popup_config BALATRO.UIBox.Config


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
---@field released_on BALATRO.Node.State


--- Node arguments table.
---@class BALATRO.Node.ARGS
---@field collides_with_point_point BALATRO.Node.Point
---@field collides_with_point_translation BALATRO.Node.Point
---@field collides_with_point_rotation BALATRO.Node.Rotation
---@field set_offset_point BALATRO.Node.Point
---@field set_offset_translation BALATRO.Node.Point


--- [Node](lua://BALATRO.Node) instance.
---@class BALATRO.Node.Instance : BALATRO.Node.Class
---@field ARGS BALATRO.Node.ARGS
---@field RETS table
---@field T BALATRO.Node.Transform
---@field VT BALATRO.Node.Transform
---@field CT BALATRO.Node.Transform
---@field config BALATRO.Node.Config
---@field click_offset BALATRO.Node.Point
---@field hover_offset BALATRO.Node.Point
---@field created_on_pause boolean
---@field ID number
---@field FRAME BALATRO.Node.Frame
---@field states BALATRO.Node.States
---@field container BALATRO.Node.Instance
---@field children table<string, BALATRO.Node.Instance> | BALATRO.Node.Instance[]
---@field under_overlay boolean
---@field DEBUG_VALUE boolean
---@field CALCING boolean


---@class BALATRO.Node.Super : BALATRO.Node.Class
---@field __index BALATRO.Node Metatable index pointing to the Node class itself, used for inheritance.
---@field super BALATRO.Node Reference to the parent class, used for accessing methods and properties of the parent class.


---@class BALATRO.Node.Class : BALATRO.Object.Super
---@field init fun(self: BALATRO.Node, args: BALATRO.Node.Arguments) Initializes the node.
---@field draw_boundingrect fun(self: BALATRO.Node.Instance) Draws the bounding rectangle of the node.
---@field draw fun(self: BALATRO.Node.Instance) Draws the node and its children.
---@field collides_with_point fun(self: BALATRO.Node.Instance, point: BALATRO.Node.Point): boolean Checks if the node collides with a point.
---@field set_offset fun(self: BALATRO.Node.Instance, point: BALATRO.Node.Point, type: BALATRO.Node.OffsetType) Sets the offset of the node.
---@field drag fun(self: BALATRO.Node.Instance) Drags the node.
---@field can_drag fun(self: BALATRO.Node.Instance): boolean Checks if the node can be dragged.
---@field stop_drag fun(self: BALATRO.Node.Instance) Stops dragging the node.
---@field hover fun(self: BALATRO.Node.Instance) Node hover.
---@field stop_hover fun(self: BALATRO.Node.Instance) Stops hovering the node.
---@field put_focused_cursor fun(self: BALATRO.Node.Instance) Puts the focused cursor on the node.
---@field set_container fun(self: BALATRO.Node.Instance, container: BALATRO.Node.Instance) Sets the container of the node.
---@field translate_container fun(self: BALATRO.Node.Instance) Translates the container of the node.
---@field remove fun(self: BALATRO.Node.Instance) Removes the node.
---@field fast_mid_dist fun(self: BALATRO.Node.Instance, other_node: BALATRO.Node.Instance): number Calculates the fast mid distance between the node and a point.
---@field release fun(self: BALATRO.Node.Instance, released: boolean) Releases the node - prototype.
---@field click fun(self: BALATRO.Node.Instance) Node click - prototype.
---@field animate fun(self: BALATRO.Node.Instance) Animates the node - prototype.
---@field update fun(self: BALATRO.Node.Instance) Updates the node - prototype.


--- Node represent any game object that needs to have some transform available in the game itself.
--- Everything that you see in the game is a Node, and some invisible things like the G.ROOM are also
--- represented here.
---@class BALATRO.Node : BALATRO.Node.Class
Node = {}

--- `Node()` - creates a new instance of [Node](lua://BALATRO.Node).
--- @param args BALATRO.Node.Arguments
--- @return BALATRO.Node.Instance
Node = function(args) end

---@alias Node BALATRO.Node
