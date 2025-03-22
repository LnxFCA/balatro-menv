---@meta


---@alias BALATRO.UI.T 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
---@alias BALATRO.UI.Colour number[]


---@alias BALATRO.UI.Object BALATRO.UIElement | BALATRO.UIBox | BALATRO.Moveable


---@class BALATRO.UIElement.Dimension
---@field h number
---@field w number


---@class BALATRO.UIElement.ARGS : BALATRO.Moveable.ARGS
---@field xywh_node_trans BALATRO.Node.Transform


---@class BALATRO.UI.Definition.Config.FocusArgs
---@field button? string
---@field registered? boolean
---@field snap_to? boolean
---@field funnel_to? boolean | BALATRO.UIElement
---@field funnel_from? BALATRO.UIElement


---@class BALATRO.UI.Definition.Config.ContainerT
---@field id? string
---@field align? string
---@field padding? number
---@field button? string
---@field func? string
---@field maxw? number
---@field maxh? number
---@field minw? number
---@field minh? number
---@field draw_layer? number
---@field no_role? boolean
---@field role? BALATRO.Moveable.set_role.Args
---@field colour? BALATRO.UI.Colour
---@field outline_colour? BALATRO.UI.Colour
---@field focus_args? BALATRO.UI.Definition.Config.FocusArgs


---@class BALATRO.UI.Definition.Config.ObjectT
---@field object? BALATRO.UI.Object


---@class BALATRO.UI.Definition.Config.TextT
---@field text? string


---@class BALATRO.UI.Definition.Tooltip


---@class BALATRO.UI.Definition.Config : BALATRO.UI.Definition.Config.ContainerT, BALATRO.UI.Definition.Config.ObjectT, BALATRO.UI.Definition.Config.TextT
---@field button_UIE? BALATRO.UIElement
---@field on_demand_tooltip? BALATRO.UI.Definition.Tooltip
---@field tooltip? BALATRO.UI.Definition.Tooltip
---@field detailed_tooltip? BALATRO.UI.Definition.Tooltip
---@field collideable? boolean
---@field can_collide? boolean
---@field ref_value? string
---@field ref_table? table
---@field prev_value? any
---@field juice? boolean
---@field force_focus? boolean
---@field button_delay? number
---@field button_delay_start? number
---@field button_delay_end? number
---@field button_delay_progress? number
---@field insta_func? string
---@field draw_after? boolean


---@class BALATRO.UI.Node.Common
---@field n BALATRO.UI.T
---@field config BALATRO.UI.Definition.Config
---@field nodes BALATRO.UI.Node.Common[]


---@class BALATRO.UI.Definition
---@field n BALATRO.UI.T
---@field config BALATRO.UI.Definition.Config
---@field nodes BALATRO.UI.Node.Common[]


---@class BALATRO.UIElement : BALATRO.UIElement.Class
---@field ARGS BALATRO.UIElement.ARGS
---@field config BALATRO.UI.Definition.Config
---@field parent BALATRO.UIElement
---@field UIT BALATRO.UI.T | number
---@field UIBox BALATRO.UIBox
---@field children BALATRO.UI.Object[] | table<string, BALATRO.UI.Object>
---@field content_dimensions BALATRO.UIElement.Dimension
---@field is fun(self: BALATRO.UIElement, T: BALATRO.UIElement.Callable)
local UIELement = {}


---@class BALATRO.UIElement.Class : BALATRO.Moveable.Super
---@field init BALATRO.UIElement.Call
---@field set_values fun(self: BALATRO.UIElement, _T: BALATRO.Node.Transform, recalculate: boolean)
---@field print_topology fun(self: BALATRO.UIElement, indent?: number): string
---@field initialize_VT fun(self: BALATRO.UIElement)
---@field draw_children fun(self: BALATRO.UIElement, layer?: BALATRO.UIElement)
---@field draw_self fun(self: BALATRO.UIElement)


---@alias BALATRO.UIElement.Call fun(self: BALATRO.UIElement, parent: BALATRO.UIElement, new_UIBox: BALATRO.UIBox, new_UIT: BALATRO.UI.T, config: BALATRO.UI.Definition.Config)
---@alias BALATRO.UIElement.Callable BALATRO.UIElement | BALATRO.UIElement.Call


---@overload fun(obj: BALATRO.UIElement, args: BALATRO.Node.Arguments)
function Moveable.init(obj, args) end
