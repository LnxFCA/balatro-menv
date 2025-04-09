---@meta


---@alias SMODS.Mod SMODS.Mod.Base | SMODS.Mod.Extra
---@alias SMODS.Mod.TabFunc fun(): BALATRO.UI.Node.ROOT


---@class SMODS.Mod.ExtraTab
---@field label string
---@field tab_definition_function SMODS.Mod.TabFunc


---@class SMODS.Mod.Base
---@field id string
---@field can_load? boolean
---@field version string
---@field meta_mod? boolean


---@class SMODS.Mod.Extra
---@field name string
---@field display_name string
---@field author string | string[]
---@field description string
---@field priority number
---@field badge_colour BALATRO.UI.Colour
---@field badge_text_colour BALATRO.UI.Colour
---@field dependencies table<string, boolean>
---@field conflicts table<string, boolean>
---@field prefix string
---@field outdated? boolean
---@field dump_loc? boolean
---@field optional_dependencies table<string, boolean>
---@field path string
---@field github string
---@field main_file string
---@field config_file string
---@field provides table<string, boolean>
---@field json? boolean
---@field disabled? boolean
---@field load_issues table<string, unknown>
---@field lovely? boolean
---@field lovely_only? boolean
---@field config? table
---@field prefix_config? SMODS.GameObject.PrefixConfig
---@field config_tag? SMODS.Mod.TabFunc
---@field extra_tabs? fun(): SMODS.Mod.ExtraTab[]


---@class SMODS.ProvidedMod
---@field mod SMODS.Mod
---@field version string
