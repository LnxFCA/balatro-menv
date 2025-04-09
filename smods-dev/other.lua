---@meta


---@alias SMODS.LocVars SMODS.LocVars.Base | SMODS.LocVars.Extra


---@class SMODS.Settings
---@field real_language? BALATRO.Language.Key


---@class SMODS.Colours
---@field STAKES BALATRO.UI.Colour[]
---@field RARITY table<string, BALATRO.UI.Colour>


---@class SMODS.LocVars.Other
---@field colours? BALATRO.UI.Colour[]


---@class SMODS.LocVars.Base
---@field vars string[] | SMODS.LocVars.Other
---@field key? string
---@field set string
---@field scale? number
---@field text_colour? BALATRO.UI.Colour
---@field background_colour? BALATRO.UI.Colour
---@field main_start? BALATRO.UI.Node[]
---@field main_end? BALATRO.UI.Node[]


---@class SMODS.LocVars.Extra
