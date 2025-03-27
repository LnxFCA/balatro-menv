---@meta


---@alias BALATRO.UI.Colour number[] | [number, number, number, number]
---@alias BALATRO.Colours BALATRO.Colours.Base | BALATRO.Colours.Extra
---@alias BALATRO.UIT.Key string | "T" | "B" | "C" | "R" | "O" | "ROOT" | "S" | "I" | "padding"
---@alias BALATRO.UIT 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0

---@alias BALATRO.SHADERS BALATRO.SHADERS.Base | table<BALATRO.SHADERS.Key, love.Shader>
---@alias BALATRO.SHADERS.Key string
---| "background"
---| "booster"
---| "CRT"
---| "debuff"
---| "dissolve"
---| "flame"
---| "flash"
---| "foil"
---| "gold_seal"
---| "holo"
---| "hologram"
---| "negative"
---| "negative_shine"
---| "polychrome"
---| "skew"
---| "splash"
---| "vortex"
---| "voucher"


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


---@alias BALATRO.UI.Align string


---@class BALATRO.UI.Resolution
---@field h number
---@field w number


---@class BALATRO.Colours.DynUI
---@field MAIN BALATRO.UI.Colour
---@field DARK BALATRO.UI.Colour
---@field BOSS_MAIN BALATRO.UI.Colour
---@field BOSS_DARK BALATRO.UI.Colour
---@field BOSS_PALE BALATRO.UI.Colour


---@class BALATRO.Colours.SUITS
---@field Hearts BALATRO.UI.Colour
---@field Diamonds BALATRO.UI.Colour
---@field Clubs BALATRO.UI.Colour
---@field Spades BALATRO.UI.Colour


---@class BALATRO.Colours.UI
---@field TEXT_LIGHT BALATRO.UI.Colour
---@field TEXT_DARK BALATRO.UI.Colour
---@field TEXT_INACTIVE BALATRO.UI.Colour
---@field BACKGROUND_LIGHT BALATRO.UI.Colour
---@field BACKGROUND_WHITE BALATRO.UI.Colour
---@field BACKGROUND_DARK BALATRO.UI.Colour
---@field BACKGROUND_INACTIVE BALATRO.UI.Colour
---@field OUTLINE_LIGHT BALATRO.UI.Colour
---@field OUTLINE_LIGHT_TRANS BALATRO.UI.Colour
---@field OUTLINE_DARK BALATRO.UI.Colour
---@field TRANSPARENT_LIGHT BALATRO.UI.Colour
---@field TRANSPARENT_DARK BALATRO.UI.Colour
---@field HOVER BALATRO.UI.Colour


---@class BALATRO.Colours.SET
---@field Default BALATRO.UI.Colour
---@field Enhanced BALATRO.UI.Colour
---@field Joker BALATRO.UI.Colour
---@field Tarot BALATRO.UI.Colour
---@field Planet BALATRO.UI.Colour
---@field Spectral BALATRO.UI.Colour
---@field Voucher BALATRO.UI.Colour


---@class BALATRO.Colours.SSET : BALATRO.Colours.SET
---@field Edition BALATRO.UI.Colour


---@class BALATRO.Colours.BLIND
---@field Small BALATRO.UI.Colour
---@field Big BALATRO.UI.Colour
---@field Boss BALATRO.UI.Colour
---@field won BALATRO.UI.Colour


---@class BALATRO.Colours.BG
---@field L BALATRO.UI.Colour
---@field D BALATRO.UI.Colour
---@field C BALATRO.UI.Colour
---@field contrast number


---@class BALATRO.Colours.Base
---@field MULT BALATRO.UI.Colour
---@field CHIPS BALATRO.UI.Colour
---@field MONEY BALATRO.UI.Colour
---@field XMULT BALATRO.UI.Colour
---@field FILTER BALATRO.UI.Colour
---@field BLUE BALATRO.UI.Colour
---@field RED BALATRO.UI.Colour
---@field GREEN BALATRO.UI.Colour
---@field PALE_GREEN BALATRO.UI.Colour
---@field ORANGE BALATRO.UI.Colour
---@field IMPORTANT BALATRO.UI.Colour
---@field GOLD BALATRO.UI.Colour
---@field YELLOW BALATRO.UI.Colour
---@field CLEAR BALATRO.UI.Colour
---@field WHITE BALATRO.UI.Colour
---@field PURPLE BALATRO.UI.Colour
---@field BLACK BALATRO.UI.Colour
---@field L_BLACK BALATRO.UI.Colour
---@field GREY BALATRO.UI.Colour
---@field CHANCE BALATRO.UI.Colour
---@field JOKER_GREY BALATRO.UI.Colour
---@field VOUCHER BALATRO.UI.Colour
---@field BOOSTER BALATRO.UI.Colour
---@field EDITION BALATRO.UI.Colour
---@field DARK_EDITION BALATRO.UI.Colour
---@field ETERNAL BALATRO.UI.Colour
---@field PERISHABLE BALATRO.UI.Colour
---@field RENTAL BALATRO.UI.Colour
---@field DYN_UI BALATRO.Colours.DynUI
---@field SO_1 BALATRO.Colours.SUITS
---@field SO_2 BALATRO.Colours.SUITS
---@field SUITS BALATRO.Colours.SUITS
---@field UI BALATRO.Colours.UI
---@field SET BALATRO.Colours.SET
---@field SECONDARY_SET BALATRO.Colours.SSET
---@field RARITY BALATRO.UI.Colour[]
---@field BLIND BALATRO.Colours.BLIND
---@field HAND_LEVELS BALATRO.UI.Colour[]
---@field BACKGROUND BALATRO.Colours.BG


---@class BALATRO.Colours.Extra
---@field UI_CHIPS BALATRO.UI.Colour
---@field UI_MULT BALATRO.UI.Colour


---@class BALATRO.UIT.Enum
---@field T number
---@field B number
---@field C number
---@field R number
---@field O number
---@field ROOT number
---@field S number
---@field I number
---@field padding number


---@class BALATRO.SHADERS.Base
---@field background love.Shader
---@field booster love.Shader
---@field CRT love.Shader
---@field debuff love.Shader
---@field dissolve love.Shader
---@field flame love.Shader
---@field flash love.Shader
---@field foil love.Shader
---@field gold_seal love.Shader
---@field holo love.Shader
---@field hologram love.Shader
---@field negative love.Shader
---@field negative_shine love.Shader
---@field polychrome love.Shader
---@field skew love.Shader
---@field splash love.Shader
---@field vortex love.Shader
---@field voucher love.Shader
