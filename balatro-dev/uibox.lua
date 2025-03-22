---@meta


---@class BALATRO.UIBox.Arguments
---@field T? BALATRO.Node.Transform
---@field definition BALATRO.UIBox.Definition
---@field config? BALATRO.UIBox.Config


---@class BALATRO.UIBox.DrawLayer


---@alias BALATRO.UI.Major BALATRO.UIBox | BALATRO.Moveable
---@alias BALATRO.UIBox.Config.Alignment string
---@alias BALATRO.UIBox.Parent BALATRO.UIBox | BALATRO.Moveable
---@alias BALATRO.UIBox.Mid BALATRO.UIBox | BALATRO.Moveable | BALATRO.UIElement


---@class BALATRO.UIBox.Config: BALATRO.Moveable.Config
---@field major? BALATRO.UI.Major
---@field parent BALATRO.UIBox.Parent
---@field align BALATRO.UIBox.Config.Alignment
---@field type BALATRO.Moveable.Role.Type
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


---@class BALATRO.UIBox.Definition


---@class BALATRO.UIBox : BALATRO.UIBox.Class
---@field draw_layers BALATRO.UIBox.DrawLayer[] | table<string, BALATRO.UIBox.DrawLayer>
---@field definition BALATRO.UIBox.Definition
---@field config BALATRO.UIBox.Config
---@field parent BALATRO.UIBox.Parent
---@field major BALATRO.UI.Major
---@field layered_parallax BALATRO.UI.Major
---@field Mid BALATRO.UIBox.Mid
---@field UIRoot BALATRO.UIElement
local UIBox = {}


---@class BALATRO.UIBox.Class : BALATRO.Moveable.Super
---@field init fun(self: BALATRO.UIBox, args: BALATRO.UIBox.Arguments)
---@field get_UIE_by_ID fun(self: BALATRO.UIBox, id: string, node?: BALATRO.UIBox.Parent): BALATRO.UIElement
---@field set_parent_child fun(self: BALATRO.UIBox, definition: BALATRO.UIBox.Definition, child?: BALATRO.UIBox.Parent)


--- `UIBox()` - creates a new instance of [Moveable](lua://BALATRO.UIBox).
---@alias BALATRO.UIBox.Callable BALATRO.UIBox | (fun(args: BALATRO.UIBox.Arguments): BALATRO.UIBox)


---@overload fun(object: BALATRO.UIBox, T?: BALATRO.Node.Transform)
function Moveable.init(obj, T) end
