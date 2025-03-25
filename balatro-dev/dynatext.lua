---@meta


---@alias BALATRO.DynaText.String (string[] | BALATRO.DynaText.DString[])


---@class BALATRO.DynaText.String.Letter
---@field letter? love.Text
---@field char? string
---@field scale? number
---@field offset? BALATRO.Node.Point
---@field pop_in? number
---@field dims BALATRO.Node.Point
---@field r? number
---@field suffix? number[]
---@field prefix? number[]
---@field colour? BALATRO.UI.Colour


---@class BALATRO.DynaText.String.SString
---@field string? string
---@field W? number
---@field H? number
---@field letters? BALATRO.DynaText.String.Letter[]
---@field W_offset? number
---@field H_offset? number


---@class BALATRO.DynaText.DString
---@field string? string
---@field ref_value? string
---@field ref_table? table
---@field suffix? string
---@field prefix? string
---@field scale? number
---@field outer_colour? BALATRO.UI.Colour
---@field colour? BALATRO.UI.Colour


---@class BALATRO.DynaText.Config.Pulse
---@field start number
---@field width number
---@field amount number
---@field speed number
---@field silent? boolean

---@class BALATRO.DynaText.Config.Quiver : BALATRO.DynaText.Config.Pulse
---@field start? number
---@field width? number

---@class BALATRO.DynaText.Config : BALATRO.UI.Definition.Config.ContainerT
---@field pop_in_rate? number
---@field bump_rate? number
---@field bump_amount? number
---@field font? BALATRO.UI.Font
---@field string? string | BALATRO.DynaText.String
---@field x_offset? number
---@field y_offset? number
---@field colours BALATRO.UI.Colour[]
---@field silent? boolean
---@field pop_in? number
---@field W? number
---@field H? number
---@field pop_delay? number
---@field X? number
---@field Y? number
---@field text_rot? number
---@field reset_pop_in? boolean
---@field pop_out? number
---@field spacing? number
---@field non_recalc? boolean
---@field offset_y? number
---@field random_element? boolean
---@field min_cycle_time? number
---@field pitch_shift? number
---@field rotate? number
---@field pulse? BALATRO.DynaText.Config.Pulse
---@field quiver? BALATRO.DynaText.Config.Quiver
---@field float? boolean
---@field bump? boolean
---@field shadow_colour? BALATRO.UI.Colour


---@class BALATRO.DynaText : BALATRO.DynaText.Class
---@field config BALATRO.DynaText.Config
---@field shadow? boolean
---@field scale number
---@field pop_in_rate number
---@field bump_rate number
---@field bump_amount number
---@field font BALATRO.UI.Font
---@field string BALATRO.DynaText.String | string
---@field text_offset BALATRO.Node.Point
---@field colours BALATRO.UI.Colour[]
---@field created_time number
---@field silent? boolean
---@field start_pop_in? number | boolean
---@field strings BALATRO.DynaText.String.SString[]
---@field focused_string number
---@field pop_delay number
---@field reset_pop_in? boolean
---@field ui_object_updated? boolean
---@field non_recalc? boolean
---@field pop_out_time? number
---@field pop_cycle? boolean
local DynaText = {}


---@class BALATRO.DynaText.Class : BALATRO.Moveable.Super
---@field init fun(self: BALATRO.DynaText, config: BALATRO.DynaText.Config)
---@field update_text fun(self: BALATRO.DynaText, first_pass?: boolean)
---@field pop_out fun(self: BALATRO.DynaText, pop_out_timer?: number)
---@field pop_in fun(self: BALATRO.DynaText, pop_in_timer?: number)
---@field align_letters fun(self: BALATRO.DynaText)
---@field set_quiver fun(self: BALATRO.DynaText, amt?: number)
---@field pulse fun(self: BALATRO.DynaText, amt?: number)


--- `DynaText()` Creates a new DynaText object
---@param config BALATRO.DynaText.Config
---@return BALATRO.DynaText
_G.DynaText = function(config) end
