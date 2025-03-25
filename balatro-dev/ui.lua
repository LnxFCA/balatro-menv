---@meta


--- Node arguments table.
---@class BALATRO.ARGS
---@field collides_with_point_point BALATRO.Node.Point
---@field collides_with_point_translation BALATRO.Node.Point
---@field collides_with_point_rotation BALATRO.Node.Rotation
---@field set_offset_point BALATRO.Node.Point
---@field set_offset_translation BALATRO.Node.Point
---@field drag_cursor_trans BALATRO.Node.Point
---@field drag_translation BALATRO.Node.Point
---@field get_major BALATRO.Moveable.ARGS.get_major
---@field xywh_node_trans BALATRO.Node.Transform
---@field text_parallax BALATRO.UIElement.Parallax
---@field button_colours BALATRO.UI.Colour[]
---@field FUNC_TRACKER table<string, number>
---@field prep_shader BALATRO.ARGS.prep_shader
---@field send_to_shader number[]
---@field invisible_area_types? BALATRO.ARGS.area_types
---@field draw_layers? string[]
---@field draw_shadow_norm BALATRO.Node.Point
---@field draw_from_offset? BALATRO.Node.Point


---@class BALATRO.RETS
---@field get_pos_pixel? number[]


---@class BALATRO.UI.Font
---@field TEXT_OFFSET BALATRO.Node.Point
---@field FONT love.Font
---@field FONTSCALE number
---@field TEXT_HEIGHT_SCALE number
