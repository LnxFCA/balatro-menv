---@meta


---@class BALATRO.UIBox.Arguments
---@field T? BALATRO.Node.Transform
---@field definition BALATRO.UI.Node
---@field config? BALATRO.UIBox.Config


---@alias BALATRO.UIBox.Config.Alignment string


---@class BALATRO.UIBox.Config
---@field major? BALATRO.UIObject
---@field parent? BALATRO.UIObject
---@field align BALATRO.UIBox.Config.Alignment
---@field type? BALATRO.Moveable.Role.Type
---@field bond? BALATRO.Moveable.Role.Bond 
---@field offset? BALATRO.Node.Point
---@field lr_clamp? number
---@field xy_bond? BALATRO.Moveable.Role.Bond
---@field r_bond? BALATRO.Moveable.Role.Bond
---@field wh_bond? BALATRO.Moveable.Role.Bond
---@field scale_bond? BALATRO.Moveable.Role.Bond
---@field can_collide? boolean
---@field padding? number
---@field instance_type? string


---@class BALATRO.UIBox : BALATRO.UIBox.Class
---@field draw_layers BALATRO.UIElement[] | table<string, BALATRO.UIElement>
---@field definition BALATRO.UI.Node
---@field config BALATRO.UIBox.Config
---@field parent BALATRO.UIObject
---@field major BALATRO.UIObject
---@field layered_parallax BALATRO.UIObject
---@field Mid BALATRO.UIObject
---@field UIRoot BALATRO.UIElement
---@field attention_text? boolean
---@field highlights? BALATRO.UIElement[]
local UIBox = {}


---@class BALATRO.UIBox.Class : BALATRO.Moveable.Super
---@field init fun(self: BALATRO.UIBox, args: BALATRO.UIBox.Arguments)
---@field calculate_xywh fun(self: BALATRO.UIBox, node: BALATRO.UIElement, T: BALATRO.Node.Transform, recalculate?: boolean, scale?: number): number, number
---@field remove_group fun(self: BALATRO.UIBox, node?: BALATRO.UIElement, group?: number): boolean | nil
---@field get_group fun(self: BALATRO.UIBox, node?: BALATRO.UIElement, group?: number, ingroup?: BALATRO.UIElement[]): BALATRO.UIElement[]
---@field set_parent_child fun(self: BALATRO.UIBox, node: BALATRO.UI.Node, parent?: BALATRO.UIElement)
---@field remove fun(self: BALATRO.UIBox)
---@field draw fun(self: BALATRO.UIBox)
---@field recalculate fun(self: BALATRO.UIBox, _?: boolean)
---@field move fun(self: BALATRO.UIBox, dt?: number)
---@field drag fun(self: BALATRO.UIBox, offset: BALATRO.Node.Point)
---@field add_child fun(self: BALATRO.UIBox, node: BALATRO.UI.Node, parent?: BALATRO.UIElement)
---@field set_container fun(self: BALATRO.UIBox, container: BALATRO.UIObject)
---@field print_topology fun(self: BALATRO.UIBox, indent?: number): string


--- Get specific Node from UI tree matching `id`
---@overload fun(self: BALATRO.UIBox, id: string): BALATRO.UIElement
---@overload fun(self: BALATRO.UIBox, id: string, node?: BALATRO.UIElement): BALATRO.UIElement
---@param self BALATRO.UIBox
---@param id string
---@param node BALATRO.UIElement
---@return BALATRO.UIElement
UIBox.get_UIE_by_ID = function(self, id, node) end


--- `UIBox()` - Creates a new instance of [Moveable](lua://BALATRO.UIBox).
---@param args BALATRO.UIBox.Arguments
---@return BALATRO.UIBox
_G.UIBox = function(args) end


_G.dt = 0
