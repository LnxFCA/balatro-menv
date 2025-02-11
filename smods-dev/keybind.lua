---@meta


---@type table
SMODS = {}


--- The `SMODS.Keybind` class allows you to define custom keybindings for your mod.
--- Each keybinding can be associated with an `action` that will be executed
--- when the key is pressed, held, or released.
---
--- For full typing support use: `---@type SMODS.Keybind | SMODS_T.GameObjectClass`
---@class SMODS.Keybind : SMODS_T.Keybind.Args
SMODS.Keybind = {}


---@class SMODS_T.Keybind.Args
---@field key_pressed string The key that triggers the action.
---@field held_keys string[] | nil A list of other keys that need to be held for the action to be executed.
---@field event 'pressed' | 'held' | 'release' The event type that triggers the action. Can be `pressed`, `held`, or `released`.
---@field held_duration number | nil The duration for which the key needs to be held (only applicable if event is `held`).
---@field action fun(self: SMODS.Keybind) The function to be executed when the key event is triggered.


---@overload fun(args: SMODS_T.KeybindArgs): SMODS.Keybind
SMODS.Keybind = function (args) end
