---@meta


---@alias SMODS.Stake.Type SMODS.Stake | BALATRO.Prototype.Stake


---@class SMODS
---@field GameObject SMODS.GameObject
---@field Languages table<string, SMODS.Language>
---@field Language SMODS.Language
---@field _Loc_Pre SMODS.LocPre
---@field Atlases table<string, SMODS.Atlas>
---@field Atlas SMODS.Atlas
---@field Sounds table<string, SMODS.Sound>
---@field Sound SMODS.Sound
---@field Stakes table<string, SMODS.Stake>
---@field Stake SMODS.Stake
---@field Rarities table<string, SMODS.Rarity>
---@field Rarity SMODS.Rarity
---@field ObjectTypes table<string, SMODS.ObjectType>
---@field ObjectType SMODS.ObjectType
---@field ConsumableTypes table<string ,SMODS.ConsumableType>
---@field ConsumableType SMODS.ConsumableType
---@field Centers table<string, SMODS.Center.All>
---@field Center SMODS.Center
---@field Joker SMODS.Joker
---@field Consumable SMODS.Consumable
---@field Tarot SMODS.Tarot
---@field Planet SMODS.Planet
---@field Spectral SMODS.Spectral
---@field Voucher SMODS.Voucher
---@field Back SMODS.Back
---@field Booster SMODS.Booster
---@field UndiscoveredSprites SMODS.UndiscoveredSprite[]
---@field UndiscoveredSprite SMODS.UndiscoveredSprite
---@field Blinds table<string, SMODS.Blind>
---@field Blind SMODS.Blind
---@field Seals table<string, SMODS.Seal>
---@field Seal SMODS.Seal
---@field Suits table<string, SMODS.Suit>
---@field Suit SMODS.Suit
---@field Ranks table<string, SMODS.Rank>
---@field Rank SMODS.Rank
---@field DeckSkins table<string, SMODS.DeckSkin>
---@field DeckSkin SMODS.DeckSkin
---@field PokerHandParts table<string, SMODS.PokerHandPart>
---@field PokerHandPart SMODS.PokerHandPart
---@field PokerHands table<string, SMODS.PokerHand>
---@field PokerHand SMODS.PokerHand
---@field Challenges table<string, SMODS.Challenge>
---@field Challenge SMODS.Challenge
---@field Tags table<string, SMODS.Tag>
---@field Tag SMODS.Tag
---@field Stickers table<string, SMODS.Sticker>
---@field Sticker SMODS.Sticker
---@field Enhancement SMODS.Enhancement
---@field Shaders table<string, SMODS.Shader>
---@field Shader SMODS.Shader
---@field Edition SMODS.Edition
---@field Keybinds table<string, SMODS.Keybind>
---@field Keybind SMODS.Keybind
---@field Achievements table<string, SMODS.Achievement>
---@field Achievement SMODS.Achievement
---@field Gradients table<string, SMODS.Gradient>
---@field Gradient SMODS.Gradient
---@field _Loc_Post SMDOS.LocPost
---@field DrawSteps table<string, SMODS.DrawStep>
---@field DrawStep SMODS.DrawStep
---@field injectItems fun()
---@field id string
---@field version string
---@field can_load boolean
---@field meta_mod boolean
---@field config_file string
---@field MODS_DIR string
---@field path string
---@field fetch_index fun(): boolean
---@field index table<string, SMODS.Mod>
---@field update_mod_files fun(id?: string): boolean
---@field Mods table<string, SMODS.Mod>
---@field mod_priorities table<number, SMODS.Mod[]>
---@field provided_mods table<string, SMODS.ProvidedMod[]>
---@field mod_list SMODS.Mod[]
---@field dump_loc { path: string }
---@field OPENED_BOOSTER? BALATRO.Card
---@field current_mod SMODS.Mod
---@field mod_button_alert? boolean
---@field booted? boolean
---@field LAST_SELECTED_MOD_TAB? string
--- Functions
---@field add_prefixes fun(cls: SMODS.GObject, obj: SMODS.GObject, from_take_ownership?: boolean)
local SMODS = {}


--- Modify internal object key
---@overload fun(obj: SMODS.GameObject.Subclasses, prefix?: string, condition?: any, key?: string)
---@param obj SMODS.GameObject.Subclasses
---@param prefix? string
---@param condition? boolean
---@param key? string
SMODS.modify_key = function(obj, prefix, condition, key) end


--- Adds prefixes into the object.
---@overload fun(cls: SMODS.GObject, obj: SMODS.GObject, from_take_ownership: boolean)
---@param cls SMODS.GObject `obj` Base class
---@param obj SMODS.GObject
---@param from_take_ownership? boolean
SMODS.add_prefixes = function(cls, obj, from_take_ownership) end


--- Inject all SMODS Objects that are part of this class or a subclass
---@param class SMODS.GObject
SMODS.injectObjects = function(class) end


---@overload fun(stake?: SMODS.Stake, applied?: number[]): string[] | nil
---@param stake SMODS.Stake.Type
---@param applied? number[]
---@return string[] applied
SMODS.build_stake_chain = function(stake, applied) end


---@param index? number
SMODS.setup_stake = function(index) end


--- Injects a rarity into the game
---@param object_type SMODS.ObjectType.All
---@param rarity SMODS.Rarity
SMODS.inject_rarity = function(object_type, rarity) end



--- Inject playing card into the game
---@param suit SMODS.Suit
---@param rank SMODS.Rank
SMODS.inject_p_card = function(suit, rank) end


--- Removes a playing card from the game
---@param suit SMODS.Suit
---@param rank SMODS.Rank
SMODS.remove_p_card = function(suit, rank) end


---@param index number
---@param stake_desc_rows any
---@param num_added any
SMODS.applied_stakes_UI = function(index, stake_desc_rows, num_added) end


------------------------------------------------------------------------------
--- Utility functions
------------------------------------------------------------------------------

--- Given an input table, outputs a shallow mapping of keys to values as a string. Gives no further information on subtables.
---@param t table | unknown
---@return string
_G.inspect = function(t) end


--- Given an input table, recursively creates a string representation up to a depth of 5.
---@overload fun(t?: table | unknown, depth?: number, indent?: number): string
---@param t table | unknown
---@return string
_G.inspectDepth = function(t) end


--- Given an input function, outputs details on its name, source, line of definition and number of upvalues.
---@param func function | unknown
---@return string
_G.inspectFunction = function(func) end


--- Given an input table, creates a string containing Lua code that evaluates to the serializable part of `t`.
--- Information may be lost, and circular references are not resolved.
---@param t table | unknown
---@param indent? number
---@return string
_G.serialize = function(t, indent) end


--- Rounds the input number to a given amount of decimal places.
---@param num number
---@param precision? number
---@return number
_G.round_number = function(num, precision) end


--- Stringifies the input if it is not a number. Otherwise return the number as it should be displayed in the UI (e.g. scientific notation).
---@param value? unknown
---@return string
_G.format_ui_value = function(value) end


---@class SMODS.Poll.Args
---@field key? string Randomness seed for the check whether to generate a seal, defaults to `"stdseal"`/`"std_enhance"`.
---@field mod? number Multiplier to the base rate at which seals/enhancements appear.
---@field guaranteed? boolean If this is `true`, always generate a seal/enhacement.
---@field options? string[] A table of possible seals/enhancements to generate. Defaults to all available seals/enhancements.
---@field type_key? string Randomness seed for the roll which seal/enhancement to generate.

--- Checks if a seal should be generated, and generates one according to the specified arguments if so.
---@overload fun(args: SMODS.Poll.Args): string
---@param args? SMODS.Poll.Args
---@return string?
SMODS.poll_seal = function(args) end


--- Checks if an enhancement should be generated, and generates one according to the specified arguments if so.
---@overload fun(args: SMODS.Poll.Args): string
---@param args? SMODS.Poll.Args
---@return string?
SMODS.poll_enhancement = function(args) end


--- Returns a list of mods that either match the given mod ID or provide it, and are enabled and loaded.
---
--- The result of `next(SMODS.find_mod(id))` can be used to determine if a mod is present, akin to finding cards with `SMODS.find_card`.
---@param id? string
---@return SMODS.Mod[]
SMODS.find_mod = function(id) end


--- Loads `file` inside the mod context if called when the mod is being loaded,
--- otherwise `mod_id` is needed to find the correct file.
---
--- Example usage: `assert(SMODS.load_file('jokers.lua'))()`
---@param path? string
---@param mod_id? string
---@return function?
SMODS.load_file = function(path, mod_id) end


--- Plays a 'juice up' animation on the Blind chip.
SMODS.juice_up_blind = function() end


--- Given a [Card](lua://BALATRO.Card) representing a playing card, changes the card's suit, rank, or both.
--- Either argument may be omitted to retain the original suit or rank.
---
--- This function returns `nil` if it fails, with the second argument being a `string` with an error message.
---  It is recommended to always wrap calls to it in assert so errors don't go unnoticed.
---
--- Example: `assert(SMODS.change_base(card, 'Hearts'))`
---@param card BALATRO.Card
---@param suit? BALATRO.Center.SuitType
---@param rank? string
---@return BALATRO.Card?, string?
SMODS.change_base = function(card, suit, rank) end


--- Given a [Card](lua://BALATRO.Card) representing a playing card, increases or decreases the card's rank by the specified `amount`.
--- The rank is increased if `amount` is positive and decreased if it is negative.
---
--- This function returns `nil` if it fails, with the second argument being a `string` with an error message.
---  It is recommended to always wrap calls to it in assert so errors don't go unnoticed.
---
--- Example: `assert(SMODS.modify_rank(card, 1))`
---@param card BALATRO.Card
---@param amount number
---@return BALATRO.Card?, string?
SMODS.modify_rank = function(card, amount) end


--- This function replaces `find_joker`. It operates using keys instead of names, which avoids overlap between mods.
---
--- Returns an array of all jokers or consumables in the player's possession with the given `key`.
--- Debuffed cards count only if `count_debuffed` is `true`.
---@param key string
---@param count_debuffed? boolean
---@return BALATRO.Card[]
SMODS.find_card = function(key, count_debuffed) end


--- This function replaces `add_joker`. It takes the same input parameters as `SMODS.create_card` (below)
--- and additionally emplaces the generated card into its area and evaluates `add_to_deck` effects.
---@param args SMODS.CreateCard.Args
---@return BALATRO.Card card
SMODS.add_card = function(args) end


---@class SMODS.CreateCard.Args
---@field set? BALATRO.Card.Set The card type to be generated, e.g. `"Joker"`, `"Tarot"`, `"Spectral"`.
---@field key? string If this is specified, generate a card with the given key instead of the random one.
---@field area? BALATRO.CardArea The [CardArea](lua://BALATRO.CardArea) this will be emplaced into, e.g. G.jokers, G.consumeables. Default values are determined based on set.
---@field legendary? boolean
---@field rarity? number
---@field edition? BALATRO.Card.Edition.Arg | BALATRO.Card.Edition
---@field skip_materialize? boolean
---@field soulable? boolean
---@field key_append? string
---@field no_edition? string
---@field enhancement? string
---@field seal? string
---@field stickers? string[]


--- This function replaces `create_card`. It provides a cleaner interface to the same functionality.
--- The [argument](lua://SMODS.CreateCard.Args) to this function should always be a table.
---@param args SMODS.CreateCard.Args
---@return BALATRO.Card
SMODS.create_card = function(args) end


--- Save `mod` configuration table
---@overload fun(self: SMODS.Mod): boolean
---@param mod? SMODS.Mod
---@return boolean
SMODS.save_mod_config = function(mod) end


--- Load `mod` configuration table
---@overload fun(self: SMODS.Mod): table
---@param mod? SMODS.Mod
---@return table
SMODS.load_mod_config = function(mod) end


_G.SMODS = SMODS
