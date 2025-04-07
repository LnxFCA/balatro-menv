---@meta


---@alias BALATRO.UIElement.Vertice { vertices: number[] }
---@alias BALATRO.UI.Config.FocusArgs.Type string | "none" | "tab" | "cycle" | "slide"
---@alias BALATRO.UI.Config.FocusArgs BALATRO.UI.Config.FocusArgs.Base | BALATRO.UI.Config.FocusArgs.Extra


---@class BALATRO.UIElement.Parallax
---@field sx number
---@field sy number


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


---@class BALATRO.UI.Config.FocusArgs.Base
---@field button? BALATRO.Controller.Button
---@field type? BALATRO.UI.Config.FocusArgs.Type
---@field set_button_pip? boolean
---@field orientation? string


---@class BALATRO.UI.Config.FocusArgs.Extra
---@field snap_to boolean
---@field funnel_to boolean | BALATRO.UIElement
---@field funnel_from BALATRO.UIElement
---@field no_loop? boolean
---@field registered? boolean
---@field nav? string


---@class BALATRO.UI.Config.ProgressBar
---@field empty_col? BALATRO.UI.Colour
---@field filled_col? BALATRO.UI.Colour
---@field ref_table? table
---@field ref_value? string
---@field max? number


---@class BALATRO.UI.Config.C
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
---@field focus_args? BALATRO.UI.Config.FocusArgs
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


---@class BALATRO.UI.Config.O
---@field object? BALATRO.UIObject


---@class BALATRO.UI.Config.T
---@field text? string
---@field scale? string
---@field colour? BALATRO.UI.Colour
---@field vert? boolean


---@class BALATRO.UI.Config.Tooltip
---@field title? string
---@field text? string | string[]


---@class BALATRO.UI.Config : BALATRO.UI.Config.C, BALATRO.UI.Config.O, BALATRO.UI.Config.T
---@field button_UIE? BALATRO.UIElement
---@field on_demand_tooltip? BALATRO.UI.Config.Tooltip
---@field tooltip? BALATRO.UI.Config.Tooltip
---@field detailed_tooltip? BALATRO.UI.Config.Tooltip
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
---@field progress_bar? BALATRO.UI.Config.ProgressBar
---@field focus_with_object? boolean
---@field line_emboss? number
---@field chosen? string | "vert" | boolean
---@field ext_up? number
---@field res? number
---@field button_temp? string
---@field h_popup? BALATRO.UI.Node.ROOT
---@field h_popup_config? BALATRO.UIBox.Config
---@field d_popup? BALATRO.UI.Node.ROOT
---@field d_popup_config? BALATRO.UIBox.Config
---@field refresh_movement? boolean
---@field set? boolean


---@class BALATRO.UIElement : BALATRO.UIElement.Class
---@field ARGS BALATRO.ARGS
---@field config BALATRO.UI.Config
---@field parent BALATRO.UIObject
---@field UIT BALATRO.UIT
---@field UIBox BALATRO.UIBox
---@field children table<string, BALATRO.UIObject>
---@field content_dimensions BALATRO.UI.Resolution
---@field object_focus_timer? number
---@field focus_timer? number
---@field pixellated_rect? BALATRO.UIElement.PixellatedRect
---@field button_clicked? boolean
---@field disable_button? boolean
---@field last_clicked? number
local UIELement = {}


---@class BALATRO.UIElement.Class : BALATRO.Moveable.Super
---@field init fun(self: BALATRO.UIElement, parent: BALATRO.UIElement, new_UIBox: BALATRO.UIBox, new_UIT: BALATRO.UIT, config: BALATRO.UI.Config)
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


--- Check if `T` is an UIElement instance
---@param self BALATRO.UIElement
---@param T any
UIELement.is = function(self, T) end


--- `UIElement()` - Creates a new [UIElement](lua://BALATRO.UIElement) object
---@param parent BALATRO.UIElement
---@param new_UIBox BALATRO.UIBox
---@param new_UIT BALATRO.UIT
---@param config BALATRO.UI.Config
---@return BALATRO.UIElement
_G.UIElement = function (parent, new_UIBox, new_UIT, config) end
_G.UIElement = UIELement
