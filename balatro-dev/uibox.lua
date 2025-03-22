---@meta


---@class BALATRO.UIBox.Arguments
---@field T? BALATRO.Node.Transform
---@field definition BALATRO.UI.Definition
---@field config? BALATRO.UIBox.Config


---@alias BALATRO.UIBox.Config.Alignment string


---@class BALATRO.UIBox.Config
---@field major? BALATRO.UI.Object
---@field parent? BALATRO.UI.Object
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
---@field definition BALATRO.UI.Definition
---@field config BALATRO.UIBox.Config
---@field parent BALATRO.UI.Object
---@field major BALATRO.UI.Object
---@field layered_parallax BALATRO.UI.Object
---@field Mid BALATRO.UI.Object
---@field UIRoot BALATRO.UIElement
local UIBox = {}


---@class BALATRO.UIBox.Class : BALATRO.Moveable.Super
---@field init fun(self: BALATRO.UIBox, args: BALATRO.UIBox.Arguments)
---@field get_UIE_by_ID fun(self: BALATRO.UIBox, id: string, node?: BALATRO.UIElement): BALATRO.UIElement | nil
---@field calculate_xywh fun(self: BALATRO.UIBox, node: BALATRO.UIElement, T: BALATRO.Node.Transform, recalculate?: boolean, scale?: number): number, number
---@field remove_group fun(self: BALATRO.UIBox, node?: BALATRO.UIElement, group?: number): boolean | nil
---@field get_group fun(self: BALATRO.UIBox, node?: BALATRO.UIElement, group?: number, ingroup?: BALATRO.UIElement[]): BALATRO.UIElement[]
---@field set_parent_child fun(self: BALATRO.UIBox, node: BALATRO.UI.Definition | BALATRO.UI.Node.Common, parent?: BALATRO.UIElement)
---@field remove fun(self: BALATRO.UIBox)
---@field draw fun(self: BALATRO.UIBox)
---@field recalculate fun(self: BALATRO.UIBox)
---@field move fun(self: BALATRO.UIBox, dt?: number)
---@field drag fun(self: BALATRO.UIBox, offset: BALATRO.Node.Point)
---@field add_child fun(self: BALATRO.UIBox, node: UINode, parent?: BALATRO.UIElement)
---@field set_container fun(self: BALATRO.UIBox, container: BALATRO.UI.Object)
---@field print_topology fun(self: BALATRO.UIBox, indent?: number): string


--- `UIBox()` - creates a new instance of [Moveable](lua://BALATRO.UIBox).
---@alias BALATRO.UIBox.Callable BALATRO.UIBox | (fun(args: BALATRO.UIBox.Arguments): BALATRO.UIBox)


---@type number
dt = 0
