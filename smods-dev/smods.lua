---@meta

SMODS = {}

---@see SMODS_T.Mod
---@type SMODS_T.Mod The mod being executed.
SMODS.current_mod = {}

--- Save the configuration of a given `mod` to a file.
--- The configuration is serialized and written to a file in the config directory.
---@param mod SMODS_T.Mod The mod whose configuration is to be saved
---@return boolean Returns `true` if the configuration was successfully saved, otherwise `false`.
function SMODS.save_mod_config(mod) end


-- Saves the configuration for all loaded mods.
function SMODS.save_all_config() end

--- Restarts the game.
--- It saves the current configuration and then restarts the game.
function SMODS.restart_game() end


--- Given a path to a file in the context of the mod currently being loaded,
--- loads the file contents and returns them as a function.
--- If this function is called after the mod loading stage, a mod's `id`
--- must be specified in order to find the correct file.
---@param path string The path to the file to be loaded.
---@param id string The mod id.
---@return function
function  SMODS.load_file(path, id) end


---@class SMODS_T.CreateCardArgs
---@field set string The card type to be generated, e.g. 'Joker', 'Tarot', 'Spectral'.
---@field area BALATRO_T.CardArea? The card area this will be emplaced into, e.g. G.jokers, G.consumeables. Default values are determined based on set.
---@field legendary boolean? Set to true to generate a card of Legendary rarity.
---@field rarity number? If specified, skip rarity polling and use this instead of a chance roll between 0 and 1. Under vanilla conditions, values up to 0.7 indicate Common rarity, values above 0.7 and up to 0.95 indicate Uncommon rarity, and values above 0.95 indicate Rare rarity.
---@field skip_materialize boolean? If `true`, a `start_materialize` animation will not be shown.
---@field soulable boolean? If `true`, hidden Soul-type cards are allowed to replace the generated card. Usually, this is the case for cards generated for booster packs.
---@field key string? If specified, generate a card with the given key instead of the random one.
---@field key_append string? An additional RNG seeding string. This should be used to put different sources of card generation on different queues.
---@field no_edition boolean? If `true`, the generated card is guaranteed to have no randomly generated edition.
---@field edition table? Applies the specified edition modifier to the card.
---@field enhancement table? Applies the specified enhancement modifier to the card.
---@field seal table? Applies the specified seal modifier to the card.
---@field stickers table? This should be an array of sticker keys. Applies all specified stickers to the card.


--- This function replaces `create_card`.
--- It provides a cleaner interface to the same functionality.
---@param args SMODS_T.CreateCardArgs
function SMODS.create_card(args) end

