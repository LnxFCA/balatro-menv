---@meta


---@class SMODS
---@field GameObject SMODS.GameObject
---@field Languages SMODS.Language[]
---@field Language SMODS.Language
---@field _Loc_Pre SMDOS.LocPre
---@field Atlases SMODS.Atlas[]
---@field Atlas SMODS.Atlas
---@field sounds SMODS.Sound[]
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
---@field OPENED_BOOSTER? BALATRO.Card
---@field current_mod SMODS.Mod
local SMODS = {}


--- Modify internal object key
---@param obj SMODS.GameObject.Subclasses
---@param prefix? string
---@param condition? boolean
---@param key? string
SMODS.modify_key = function(obj, prefix, condition, key) end


--- Adds prefixes into the object. 
---@param cls SMODS.GObject `obj` Base class
---@param obj SMODS.GObject
---@param from_take_ownership? boolean
SMODS.add_prefixes = function(cls, obj, from_take_ownership) end


--- Injects the object into the class
---@param class SMODS.GObject
SMODS.injectObjects = function(class) end

_G.SMODS = SMODS
