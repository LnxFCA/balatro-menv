---@meta


---@alias BALATRO.Controller.Target BALATRO.Card | BALATRO.UIElement | BALATRO.CardArea | BALATRO.UIBox | BALATRO.Node
---@alias BALATRO.Controller.State.Key table<love.KeyConstant, boolean>
---@alias BALATRO.Controller.State.Button table<BALATRO.Controller.Button, boolean>
---@alias BALATRO.Controller.Button string | love.GamepadButton
---@alias BALATRO.Controller.Key string | love.KeyConstant
---@alias BALATRO.Controller.Button.Dpad "dpright" | "dpleft" | "dpdown" | "dpup"
---@alias BALATRO.Controller.ConsoleType string | "Xbox" | "Playstation" | "Nintendo" | "Generic"
---@alias BALATRO.Controller.HID.Type string | "axis" | "button" | "hat" | "touch" | "mouse"
---@alias BALATRO.Controller.InputType string | "press" | "hold"
---@alias BALATRO.Controller.Direction string | "L" | "R" | "U" | "D"


---@class BALATRO.Controller.Interrupt
---@field focus boolean
---@field stack? boolean


---@class BALATRO.Controller.Lock
---@field wipe? boolean
---@field frame_set? boolean
---@field frame? boolean
---@field edition? boolean
---@field seal? boolean
---@field selling_card? boolean
---@field load? boolean
---@field no_space? boolean


---@class BALATRO.Controller.State.Base
---@field target? BALATRO.Controller.Target
---@field handled boolean


---@class BALATRO.Controller.State.Input : BALATRO.Controller.State.Base
---@field prev_target? BALATRO.Controller.Target


---@class BALATRO.Controller.State.Cursor : BALATRO.Controller.State.Input
---@field T BALATRO.Node.Point
---@field time number


---@class BALATRO.Controller.State.Axis.LStick
---@field current string | BALATRO.Controller.Button.Dpad
---@field previous string | BALATRO.Controller.Button.Dpad


---@class BALATRO.Controller.State.Axis.LTrig
---@field current string | "triggerleft"
---@field previous string | "triggerleft"


---@class BALATRO.Controller.State.Axis.RTrig
---@field current string | "triggerright"
---@field previous string | "triggerright"



---@class BALATRO.Controller.State.Axis.Button
---@field current string
---@field previous string


---@class BALATRO.Controller.State.Axis
---@field l_stick BALATRO.Controller.State.Axis.LStick
---@field r_stick BALATRO.Controller.State.Axis.Button
---@field l_trig BALATRO.Controller.State.Axis.LTrig
---@field r_trig BALATRO.Controller.State.Axis.RTrig


---@class BALATRO.Controller.Registry
---@field menu boolean
---@field node BALATRO.Controller.Target
---@field click boolean


---@class BALATRO.Controller.HID
---@field last_type BALATRO.Controller.HID.Type
---@field dpad boolean
---@field pointer boolean
---@field touch boolean
---@field controller boolean
---@field mouse boolean
---@field axis_cursor boolean


---@class BALATRO.Controller.GAMEPAD
---@field object? love.Joystick
---@field mapping? string
---@field name? string
---@field temp_console? BALATRO.Controller.ConsoleType


---@class BALATRO.Controller.KeyboardController
---@field getGamepadMappingString fun(self: BALATRO.Controller.KeyboardController): string
---@field getGamepadAxis fun(self: BALATRO.Controller.KeyboardController): number


---@class BALATRO.Controller.CursorContext.Context
---@field node? BALATRO.Controller.Target
---@field cursor_pos? BALATRO.Node.Point
---@field interrupt? boolean


---@class BALATRO.Controller.CursorContext
---@field stack? BALATRO.Controller.CursorContext.Context[]
---@field layer? number


---@class BALATRO.Controller.SnapTo
---@field node BALATRO.Controller.Target
---@field T? BALATRO.Node.Transform
---@field type string | "node" | "transform"


---@class BALATRO.Controller.SnapTo.Arg
---@field node BALATRO.Controller.Target
---@field T? BALATRO.Node.Transform | BALATRO.Node.Point


---@class BALATRO.Controller : BALATRO.Controller.Class
---@field clicked BALATRO.Controller.State.Input
---@field focused BALATRO.Controller.State.Input
---@field dragging BALATRO.Controller.State.Input
---@field hovering BALATRO.Controller.State.Input
---@field released_on BALATRO.Controller.State.Input
---@field cursor_down BALATRO.Controller.State.Cursor
---@field cursor_up BALATRO.Controller.State.Cursor
---@field cursor_hover BALATRO.Controller.State.Cursor
---@field cursor_collider? BALATRO.Controller.State.Input
---@field cursor_position BALATRO.Node.Point
---@field pressed_keys BALATRO.Controller.State.Key
---@field released_keys BALATRO.Controller.State.Key
---@field held_keys BALATRO.Controller.State.Key
---@field held_key_times table<string, number>
---@field pressed_buttons BALATRO.Controller.State.Button
---@field released_buttons BALATRO.Controller.State.Button
---@field held_buttons BALATRO.Controller.State.Button
---@field held_button_times table<BALATRO.Controller.Button, number>
---@field interrupt BALATRO.Controller.Interrupt
---@field locks BALATRO.Controller.Lock
---@field locked? boolean
---@field axis_buttons BALATRO.Controller.State.Axis
---@field axis_cursor_speed number
---@field button_registry table<love.KeyConstant, BALATRO.Controller.Registry[]>
---@field snap_cursor_to BALATRO.Controller.SnapTo
---@field cursor_context BALATRO.Controller.CursorContext
---@field cardarea_context table<BALATRO.CardArea.Type, number>
---@field HID BALATRO.Controller.HID
---@field GAMEPAD BALATRO.Controller.GAMEPAD
---@field GAMEPAD_CONSOLE BALATRO.Controller.ConsoleType
---@field keyboard_controller BALATRO.Controller.KeyboardController
---@field is_cursor_down boolean
---@field overlay_timer number
---@field frame_buttonpress boolean
---@field COYOTE_FOCUS? boolean
---@field L_cursor_queue? BALATRO.Node.Point
---@field repress_timer? number
---@field capslock? boolean
---@field text_input_hook BALATRO.UIElement | BALATRO.UIBox
---@field nodes_at_cursor? BALATRO.Controller.Target[]
---@field collision_list? BALATRO.Controller.Target[]
---@field screen_keyboard? boolean
---@field no_holdcap? boolean
---@field using_touch? boolean
---@field focus_cursor_stack? BALATRO.Controller.CursorContext.Context[]
---@field focus_cursor_stack_level? number
---@field lock_input? boolean
local Controller = {}


---@class BALATRO.Controller.Class : BALATRO.Object.Super
---@field init fun(self: BALATRO.Controller)
---@field set_gamepad fun(self: BALATRO.Controller, gamepad: love.Joystick)
---@field get_console_from_gamepad fun(self: BALATRO.Controller, gamepad: string): BALATRO.Controller.ConsoleType
---@field set_HID_flags fun(self: BALATRO.Controller, HID_type: BALATRO.Controller.HID.Type, button?: string)
---@field set_cursor_position fun(self: BALATRO.Controller)
---@field update fun(self: BALATRO.Controller, dt: number)
---@field cull_registry fun(self: BALATRO.Controller)
---@field add_to_registry fun(self: BALATRO.Controller, node: BALATRO.Node, registry: string)
---@field process_registry fun(self: BALATRO.Controller)
---@field mod_cursor_context_layer fun(self: BALATRO.Controller, dt: number)
---@field snap_to fun(self: BALATRO.Controller, args: BALATRO.Controller.SnapTo.Arg)
---@field save_cardarea_focus fun(self: BALATRO.Controller, cardarea?: BALATRO.CardArea.Type): boolean?
---@field recall_cardarea_focus fun(self: BALATRO.Controller, cardarea?: BALATRO.CardArea.Type | BALATRO.CardArea)
---@field update_cursor fun(self: BALATRO.Controller, hard_set_T?: BALATRO.Node.Point | BALATRO.Node.Transform)
---@field handle_axis_buttons fun(self: BALATRO.Controller)
---@field update_axis fun(self: BALATRO.Controller, dt: number): BALATRO.Controller.HID.Type?
---@field button_press_update fun(self: BALATRO.Controller, button: BALATRO.Controller.Button, dt: number)
---@field button_hold_update fun(self: BALATRO.Controller, button: BALATRO.Controller.Button, dt: number)
---@field button_release_update fun(self: BALATRO.Controller, button: BALATRO.Controller.Button, dt?: number)
---@field key_press_update fun(self: BALATRO.Controller, key: BALATRO.Controller.Key, dt?: number)
---@field key_hold_update fun(self: BALATRO.Controller, key: BALATRO.Controller.Key, dt: number)
---@field key_release_update fun(self: BALATRO.Controller, key: BALATRO.Controller.Key, dt?: number)
---@field key_press fun(self: BALATRO.Controller, key: BALATRO.Controller.Key)
---@field key_release fun(self: BALATRO.Controller, key: BALATRO.Controller.Key)
---@field button_press fun(self: BALATRO.Controller, button: BALATRO.Controller.Button)
---@field button_release fun(self: BALATRO.Controller, button: BALATRO.Controller.Button)
---@field get_cursor_collision fun(self: BALATRO.Controller, T: BALATRO.Node.Point | BALATRO.Node.Transform)
---@field set_cursor_hover fun(self: BALATRO.Controller)
---@field queue_L_cursor_press fun(self: BALATRO.Controller, x: number, y: number)
---@field queue_R_cursor_press fun(self: BALATRO.Controller, x?: number, y?: number)
---@field L_cursor_press fun(self: BALATRO.Controller, x?: number, y?: number)
---@field L_cursor_release fun(self: BALATRO.Controller, x?: number, y?: number)
---@field is_node_focusable fun(self: BALATRO.Controller, node: BALATRO.Controller.Target): boolean
---@field update_focus fun(self: BALATRO.Controller, dir?: BALATRO.Controller.Direction)
---@field capture_focused_input fun(self: BALATRO.Controller, button: BALATRO.Controller.Button.Dpad, input_type: BALATRO.Controller.InputType, dt: number): boolean?
---@field navigate_focus fun(self: BALATRO.Controller, dir?: BALATRO.Controller.Direction)


--- `Controller()` - Creates a new [Controller](lua://BALATRO/Controller) object
---@return BALATRO.Controller
_G.Controller = function() end
_G.Controller = Controller
