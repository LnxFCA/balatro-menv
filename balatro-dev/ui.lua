---@meta

BALATRO_T = {}

---@class BALATRO_T.UIBox.Definition
-- A valid UIBox definition, usually generated from UI_definitions.

---@class BALATRO_T.UIBox.Config
---@field align string Alignment (e.g., 'cm' for center-middle)
---@field offset {x: number, y: number} Offset for alignment
---@field parent any Parent rectangle reference
---@field attach_rect any Attached rectangle reference
---@field can_collide boolean Whether the box can collide with other elements
---@field lr_clamp boolean? Left-right clamp flag
---@field major BALATRO_T.Moveable Major UI element reference
---@field type string? Alignment type
---@field bond string? Alignment bond type
---@field xy_bond string? X-Y bond type
---@field r_bond string? Rotation bond type
---@field wh_bond string? Width-height bond type
---@field scale_bond string? Scale bond type
---@field instance_type string? Instance type identifier

---@class BALATRO_T.UIBox.UIBoxArgs
---@field T BALATRO_T.Node.Transform Transform defining position, size, and rotation
---@field definition BALATRO_T.UIBox.Definition A table defining the UIBox schematic
---@field config BALATRO_T.UIBox.Config? Optional configuration for the UIBox

---@class BALATRO_T.UIBox : BALATRO_T.Moveable
---@field states table State flags for drag and collision
---@field draw_layers table Explicit draw order for UI elements
---@field definition BALATRO_T.UIBox.Definition The definition table describing this UIBox
---@field config BALATRO_T.UIBox.Config? Optional configuration for the UIBox
---@field parent BALATRO_T.Node? The parent Node of this UIBox
---@field Mid BALATRO_T.UIBox? The midpoint node for alignment
---@field UIRoot BALATRO_T.UIElement The root UIElement of this UIBox
---@field VT BALATRO_T.Node.Transform Visible transform for UIBox easing
BALATRO_T.UIBox = {}

---Initializes a new UIBox instance.
---@param args BALATRO_T.UIBox.UIBoxArgs Arguments for initializing the UIBox
function BALATRO_T.UIBox:init(args) end

---Retrieves a UIElement by its ID.
---@param id string Identifier of the UIElement to find
---@param node BALATRO_T.Node? Optional root `Node` for the search
---@return BALATRO_T.UIElement|nil The found `UIElement` or nil if not found
function BALATRO_T.UIBox:get_UIE_by_ID(id, node) end

---Calculates and updates the position, width, and height of a node.
---@param node BALATRO_T.Node The node to calculate dimensions for
---@param _T BALATRO_T.Node.Transform Transform data for the node
---@param recalculate boolean? Whether to force recalculation
---@param _scale number? Scale factor for the node
---@return number, number - Updated width and height
function BALATRO_T.UIBox:calculate_xywh(node, _T, recalculate, _scale) end

---Removes all UI elements belonging to a specific group.
---@param node BALATRO_T.Node Root node for the operation
---@param group any Group identifier
function BALATRO_T.UIBox:remove_group(node, group) end

---Retrieves all UI elements belonging to a specific group.
---@param node BALATRO_T.Node Root node for the operation
---@param group any Group identifier
---@param ingroup BALATRO_T.Node[]? Accumulator for found elements
---@return BALATRO_T.Node[] list of UI elements in the group
function BALATRO_T.UIBox:get_group(node, group, ingroup) end

---Sets parent-child relationships for a node.
---@param node BALATRO_T.Node The node to process
---@param parent BALATRO_T.Node? Parent node reference
function BALATRO_T.UIBox:set_parent_child(node, parent) end

---Recalculates dimensions and alignments for the entire UIBox.
function BALATRO_T.UIBox:recalculate() end

---Moves the UIBox by a delta time.
---@param dt number Delta time
function BALATRO_T.UIBox:move(dt) end

---Handles drag operations for the UIBox.
---@param offset {x: number, y: number} Drag offset
function BALATRO_T.UIBox:drag(offset) end

---Adds a child node to the UIBox.
---@param node BALATRO_T.Node The node to add
---@param parent BALATRO_T.Node Parent node reference
function BALATRO_T.UIBox:add_child(node, parent) end

---Sets the container for the UIBox.
---@param container BALATRO_T.Node | BALATRO_T.UIBox The container to set
function BALATRO_T.UIBox:set_container(container) end

---Prints the topology of the UIBox and its children.
---@param indent number? Indentation level for formatting
---@return string topology string
function BALATRO_T.UIBox:print_topology(indent) end

---Removes the UIBox and all its children.
function BALATRO_T.UIBox:remove() end

---Draws the UIBox and its children.
function BALATRO_T.UIBox:draw() end

---@overload fun(args: BALATRO_T.UIBox.UIBoxArgs): BALATRO_T.UIBox
BALATRO_T.UIBox = function(args) end


---@class BALATRO_T.UIElement : BALATRO_T.Moveable
---@field UIT string The type of the UIElement (e.g., Root, Text, Button)
---@field config table Configuration data for the UIElement
---@field parent BALATRO_T.UIElement? Parent UIElement for this element
---@field children table List of child UIElements
---@field ARGS table Table for reusable arguments, reducing garbage collection
---@field content_dimensions {w: number, h: number} Dimensions for the element's content
BALATRO_T.UIElement = {}

---Initializes a new UIElement.
---@param parent BALATRO_T.UIElement? The parent UIElement
---@param new_UIBox BALATRO_T.UIBox The associated UIBox
---@param new_UIT string The type of the UIElement
---@param config table Configuration data for the UIElement
function BALATRO_T.UIElement:init(parent, new_UIBox, new_UIT, config) end

---Sets the values for the UIElement's transform.
---@param _T BALATRO_T.Node.Transform Transform data for the UIElement
---@param recalculate boolean? Whether to force recalculation
function BALATRO_T.UIElement:set_values(_T, recalculate) end

---Prints the topology of the UIElement and its children.
---@param indent number? Indentation level for formatting
---@return string topology string
function BALATRO_T.UIElement:print_topology(indent) end

---Initializes the visible transform (VT) for the UIElement and its children.
function BALATRO_T.UIElement:initialize_VT() end

---Applies a "juice" animation effect to the UIElement.
---@param amount number? Scale amount
---@param rot_amt number? Rotation amount
function BALATRO_T.UIElement:juice_up(amount, rot_amt) end

---Checks if the UIElement can be dragged.
---@return BALATRO_T.UIElement|nil The UIElement itself if draggable, otherwise nil
function BALATRO_T.UIElement:can_drag() end

---Draws the UIElement.
function BALATRO_T.UIElement:draw() end

---Draws the children of the UIElement.
---@param layer number? Layer to draw
function BALATRO_T.UIElement:draw_children(layer) end

---Sets the width and height of the UIElement based on its children.
---@return number, number The updated width and height
function BALATRO_T.UIElement:set_wh() end

---Aligns the UIElement and its children.
---@param x number Horizontal alignment offset
---@param y number Vertical alignment offset
function BALATRO_T.UIElement:align(x, y) end

---Sets alignments for the UIElement and its children.
function BALATRO_T.UIElement:set_alignments() end

---Updates the text configuration for the UIElement.
function BALATRO_T.UIElement:update_text() end

---Updates the associated object for the UIElement.
function BALATRO_T.UIElement:update_object() end

---Draws the UIElement itself.
function BALATRO_T.UIElement:draw_self() end

---Draws a pixellated rectangle for the UIElement.
---@param _type string The type of rectangle (e.g., "fill", "line")
---@param _parallax number The parallax value
---@param _emboss number? Emboss value
---@param _progress number? Progress for animations
function UIElement:draw_pixellated_rect(_type, _parallax, _emboss, _progress) end

---Handles hover interaction for the UIElement.
function BALATRO_T.UIElement:hover() end

---Stops hover interaction for the UIElement.
function BALATRO_T.UIElement:stop_hover() end

---Sets the container for the UIElement and its children.
---@param container Node The container to set
function BALATRO_T.UIElement:set_container(container) end

---Removes the UIElement and all its children.
function BALATRO_T.UIElement:remove() end

---Handles a click event for the UIElement.
function BALATRO_T.UIElement:click() end

---Handles the focused cursor placement for the UIElement.
function BALATRO_T.UIElement:put_focused_cursor() end

---Determines if a point collides with the UIElement.
---@param cursor_trans {x: number, y: number} Cursor transform coordinates
---@return boolean Whether the point collides with the UIElement
function BALATRO_T.UIElement:collides_with_point(cursor_trans) end

---Updates the UIElement with the delta time.
---@param dt number Delta time
function BALATRO_T.UIElement:update(dt) end
