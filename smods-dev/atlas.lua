---@meta

--- Class representing an atlas in SMODS.
---@class SMODS.Atlas : SMODS.GameObject
---@field obj_table table Table of registered atlases.
---@field obj_buffer table Buffer of registered atlases.
---@field disable_mipmap boolean Indicates if mipmaps are disabled.
---@field required_params table List of required parameters for atlas creation.
---@field atlas_table string Table of assets associated with the atlas.
---@field register function Function to register the atlas.
---@field inject function Function to inject the atlas into the game.
---@field process_loc_text function Function to process localization text for the atlas.
---@field pre_inject_class function Function to perform actions before injecting the class.


---@overload fun(args: SMODS.Atlas): SMODS.Atlas | SMODS.Atlas
SMODS.Atlas = function(args) end
