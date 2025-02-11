---@meta

--- Class representing an atlas in SMODS.
---@class SMODS.Atlas : SMODS.GameObject
---@field disable_mipmap boolean? Indicates if mipmaps are disabled.
---@field required_params table? List of required parameters for atlas creation.
---@field atlas_table string? Table of assets associated with the atlas.
---@field pre_inject_class function? Function to perform actions before injecting the class.


---@class SMODS_T.Atlas.Args : SMODS_T.GameObject.Common
---@field key string The key of the atlas.
---@field px integer The width of each individual sprite at single resolution, in pixels.
---@field py integer The height of each individual sprite at single resolution, in pixels.
---@field path string | table The image file's name, including the extension (e.g. "atlas.png").
---@field atlas_table "ASSET_ATLAS" | "ANIMATION_ATLAS" | "ASSET_IMAGES"? Table where to store the atlas.
---@field frames number | table? For animated sprites, you must provide the number of frames of the animation. Each row should contain one animation, with each column showing one frame.
---@field raw_key boolean? Set this to true to prevent the loader from adding your mod prefix to the key. Useful for replacing sprites from the base game or other mods.
---@field language string? Restrict your atlas to a specific locale. Useful for introducing localized sprites while leaving other languages intact.
---@field disable_mipmap boolean? Disable mipmap being applied to this texture. Might remove artifacts on smaller textures.


---@overload fun(args: SMODS_T.Atlas.Args): SMODS.Atlas
SMODS.Atlas = function(args) end
