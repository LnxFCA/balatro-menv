---@meta


---@alias BALATRO.UI.T 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
---@alias BALATRO.UI.Colour number[]
---@alias BALATRO.UIElement.Vertice { vertices: number[] }
---@alias BALATRO.UI.Definition.Config.FocusArgs.Type string | "none" | "tab"
---@alias BALATRO.UI.Controller.Button string | "leftshoulder" | "rightshoulder"
---@alias UIDefinition BALATRO.UI.Definition
---@alias UINode UIDefinition | BALATRO.UI.Node.Common


---@alias BALATRO.UI.Object BALATRO.UIElement | BALATRO.UIBox | BALATRO.Moveable | BALATRO.Sprite | BALATRO.Card


---@class BALATRO.UIElement.Parallax
---@field sx number
---@field sy number


---@class BALATRO.UIElement.Dimension
---@field h number
---@field w number


---@class BALATRO.UIElement.PixellatedRect
---@field w number
---@field h number
---@field sw number
---@field sh number
---@field progress number
---@field parallax number
---@field fill BALATRO.UIElement.Vertice
---@field shadow BALATRO.UIElement.Vertice
---@field emboss BALATRO.UIElement.Vertice
---@field line BALATRO.UIElement.Vertice
---@field line_emboss BALATRO.UIElement.Vertice


---@class BALATRO.UI.Definition.Config.FocusArgs
---@field button? BALATRO.UI.Controller.Button
---@field registered? boolean
---@field snap_to? boolean
---@field funnel_to? boolean | BALATRO.UIElement
---@field funnel_from? BALATRO.UIElement
---@field type? BALATRO.UI.Definition.Config.FocusArgs.Type
---@field set_button_pip? boolean
---@field orientation? string


---@class BALATRO.UI.Definition.Config.ProgressBar
---@field empty_col? BALATRO.UI.Colour
---@field filled_col? BALATRO.UI.Colour
---@field ref_table? table
---@field ref_value? string
---@field max? number


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
---@field scale? number
---@field emboss? number
---@field hover? boolean
---@field shadow? boolean
---@field r? number
---@field outline? number
---@field group? number
---@field choice? boolean
---@field h? number
---@field w? number
---@field mid? boolean
---@field one_press? boolean


---@class BALATRO.UI.Definition.Config.ObjectT
---@field object? BALATRO.UI.Object


---@class BALATRO.UI.Definition.Config.TextT
---@field text? string
---@field scale? string
---@field colour? BALATRO.UI.Colour
---@field vert? boolean


---@class BALATRO.UI.Definition.Tooltip
---@field title? string
---@field text? string | string[]


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
---@field no_fill? boolean
---@field lang? table
---@field text_drawable? love.Text
---@field no_recalc? boolean
---@field force_collision? boolean
---@field button_dist? number
---@field shadow_colour? BALATRO.UI.Colour
---@field progress_bar? BALATRO.UI.Definition.Config.ProgressBar
---@field focus_with_object? boolean
---@field line_emboss? number
---@field chosen? string | "vert" | boolean
---@field ext_up? number
---@field res? number
---@field button_temp? string
---@field h_popup? UIDefinition
---@field h_popup_config? BALATRO.UIBox.Config
---@field d_popup? UINode
---@field d_popup_config? BALATRO.UIBox.Config
---@field refresh_movement? boolean


---@class BALATRO.UI.Node.Common
---@field n BALATRO.UI.T
---@field config BALATRO.UI.Definition.Config
---@field nodes BALATRO.UI.Node.Common[]


---@class BALATRO.UI.Definition
---@field n BALATRO.UI.T
---@field config BALATRO.UI.Definition.Config
---@field nodes BALATRO.UI.Node.Common[]


---@class BALATRO.UIElement : BALATRO.UIElement.Class
---@field ARGS BALATRO.ARGS
---@field config BALATRO.UI.Definition.Config
---@field parent BALATRO.UI.Object
---@field UIT BALATRO.UI.T | number
---@field UIBox BALATRO.UIBox
---@field children BALATRO.UI.Object[] | table<string, BALATRO.UI.Object>
---@field content_dimensions BALATRO.UIElement.Dimension
---@field is fun(self: BALATRO.UIElement, T: BALATRO.UIElement.Callable)
---@field object_focus_timer? number
---@field focus_timer? number
---@field pixellated_rect? BALATRO.UIElement.PixellatedRect
---@field button_clicked? boolean
---@field disable_button? boolean
---@field last_clicked? number
local UIELement = {}


---@class BALATRO.UIElement.Class : BALATRO.Moveable.Super
---@field init fun(self: BALATRO.UIElement, parent: BALATRO.UIElement, new_UIBox: BALATRO.UIBox, new_UIT: BALATRO.UI.T, config: BALATRO.UI.Definition.Config)
---@field set_values fun(self: BALATRO.UIElement, _T: BALATRO.Node.Transform, recalculate: boolean)
---@field print_topology fun(self: BALATRO.UIElement, indent?: number): string
---@field initialize_VT fun(self: BALATRO.UIElement, foo?: boolean)
---@field draw_children fun(self: BALATRO.UIElement, layer?: BALATRO.UIElement)
---@field set_wh fun(self: BALATRO.UIElement): number, number
---@field align fun(self: BALATRO.UIElement, x: number, y: number)
---@field set_alignments fun(self: BALATRO.UIElement)
---@field update_text fun(self: BALATRO.UIElement)
---@field update_object fun(self: BALATRO.UIElement)
---@field draw_self fun(self: BALATRO.UIElement)
---@field draw_pixellated_rect fun(self: BALATRO.UIElement, type, parallax: number, emboss?: number, progesss?: number)
---@field update fun(self: BALATRO.UIElement, dt: number)
---@field put_focused_cursor (fun(self: BALATRO.UIElement)) | (fun(self: BALATRO.UIElement): number, number)


---@alias BALATRO.UIElement.Call fun(parent: BALATRO.UIElement, new_UIBox: BALATRO.UIBox, new_UIT: BALATRO.UI.T, config: BALATRO.UI.Definition.Config): BALATRO.UIElement
---@alias BALATRO.UIElement.Callable BALATRO.UIElement | BALATRO.UIElement.Call
