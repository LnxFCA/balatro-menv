---@meta


---@alias SMODS.Stake.Type SMODS.Stake | BALATRO.Prototype.Stake


---@class SMODS
---@field GameObject SMODS.GameObject
---@field Languages SMODS.Language[]
---@field Language SMODS.Language
---@field _Loc_Pre SMDOS.LocPre
---@field Atlases SMODS.Atlas[]
---@field Atlas SMODS.Atlas
---@field Sounds SMODS.Sound[]
---@field Sound SMODS.Sound
---@field Stakes SMODS.Stake[]
---@field Stake SMODS.Stake
---@field Rarities SMODS.Rarity[]
---@field Rarity SMODS.Rarity
---@field ObjectTypes SMODS.ObjectType[]
---@field ObjectType SMODS.ObjectType
---@field ConsumableTypes SMODS.ConsumableType[]
---@field ConsumableType SMODS.ConsumableType
---@field Centers SMODS.Center[]
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
---@field Blinds SMODS.Blind[]
---@field Blind SMODS.Blind
---@field Seals SMODS.Seal[]
---@field Seal SMODS.Seal
---@field Suits SMODS.Suit[]
---@field Suit SMODS.Suit
---@field Ranks SMODS.Rank[]
---@field Rank SMODS.Rank
---@field DeckSkins SMODS.DeckSkin[]
---@field DeckSkin SMODS.DeckSkin
---@field PokerHandParts SMODS.PokerHandPart[]
---@field PokerHandPart SMODS.PokerHandPart
---@field PokerHands SMODS.PokerHand[]
---@field PokerHand SMODS.PokerHand
---@field Challenges SMODS.Challenge[]
---@field Challenge SMODS.Challenge
---@field Tags SMODS.Tag[]
---@field Tag SMODS.Tag
---@field Stickers SMODS.Sticker[]
---@field Sticker SMODS.Sticker
---@field Enhancement SMODS.Enhancement
---@field Shaders SMODS.Shader[]
---@field Shader SMODS.Shader
---@field Edition SMODS.Edition
---@field Keybinds SMODS.Keybind[]
---@field Keybind SMODS.Keybind
---@field Achievements SMODS.Achievement[]
---@field Achievement SMODS.Achievement
---@field Gradients SMODS.Gradient[]
---@field Gradient SMODS.Gradient
---@field _Loc_Post SMDOS.LocPost
---@field DrawSteps SMODS.DrawStep[]
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


--- Loads `file` inside the mod context if called when the mod is being loaded,
--- otherwise `mod_id` is needed to find the correct file.
---@param path? string
---@param mod_id? string
---@return function?
SMODS.load_file = function(path, mod_id) end



---@param index number
---@param stake_desc_rows any
---@param num_added any
SMODS.applied_stakes_UI = function(index, stake_desc_rows, num_added) end


_G.SMODS = SMODS
