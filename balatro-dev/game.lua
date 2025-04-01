---@meta


---@class BALATRO.Game.Globals
---@field VERSION BALATRO.VersionType
---@field F_QUIT_BUTTON boolean
---@field F_SKIP_TUTORIAL boolean
---@field F_BASIC_CREDITS boolean
---@field F_EXTERNAL_LINKS boolean
---@field F_ENABLE_PERF_OVERLAY boolean
---@field F_NO_SAVING boolean
---@field F_MUTE boolean
---@field F_SOUND_THREAD boolean
---@field F_VIDEO_SETTINGS boolean
---@field F_CTA boolean
---@field F_VERBOSE boolean
---@field F_HTTP_SCORES boolean
---@field F_RUMBLE? number
---@field F_CRASH_REPORTS boolean
---@field F_NO_ERROR_HAND boolean
---@field F_SWAP_AB_PIPS boolean
---@field F_SWAP_AB_BUTTONS boolean
---@field F_SWAP_XY_BUTTONS boolean
---@field F_NO_ACHIEVEMENTS boolean
---@field F_DISP_USERNAME? string | boolean
---@field F_ENGLISH_ONLY? boolean
---@field F_GUIDE boolean
---@field F_JAN_CTA boolean
---@field F_HIDE_BG boolean
---@field F_TROPHIES boolean
---@field F_PS4_PLAYSTATION_GLYPHS boolean
---@field F_LOCAL_CLIPBOARD boolean
---@field F_SAVE_TIMER number
---@field F_MOBILE_UI boolean
---@field F_HIDE_BETA_LANGS? boolean
---@field F_DISCORD? boolean
---@field SEED number
---@field TIMERS BALATRO.Game.TIMERS
---@field FRAMES BALATRO.UI.FRAME
---@field exp_times BALATRO.Game.ExpTimes
---@field SETTINGS BALATRO.Settings
---@field COLLABS BALATRO.Game.COLLABS
---@field METRICS BALATRO.Game.METRICS
---@field PROFILES BALATRO.Profile[]
---@field TILESIZE number
---@field TILESCALE number
---@field TILE_W number
---@field TILE_H number
---@field DRAW_HASH_BUFF number
---@field CARD_W number
---@field CARD_H number
---@field HIGHLIGHT_H number
---@field COLLISION_BUFFER number
---@field PITCH_MOD number
---@field STATES BALATRO.Game.STATES
---@field STAGES BALATRO.Game.STAGES
---@field STAGE_OBJECTS table<number, BALATRO.Game.StageObject[]>
---@field STAGE number
---@field STATE number
---@field TAROT_INTERRUPT? number
---@field STATE_COMPLETE boolean
---@field ARGS BALATRO.ARGS
---@field FUNCS BALATRO.FUNCS.Type
---@field I BALATRO.Instances
---@field ANIMATION_ATLAS BALATRO.Game.Atlas.Animation
---@field ASSET_ATLAS BALATRO.Game.Atlas.Asset
---@field MOVEABLES BALATRO.Moveable[]
---@field ANIMATIONS BALATRO.UIObject.Animation[]
---@field DRAW_HASH BALATRO.UIObject[]
---@field MIN_CLICK_DIST number
---@field MIN_HOVER_TIME number
---@field DEBUG boolean
---@field ANIMATION_FPS number
---@field VIBRATION number
---@field CHALLENGE_WINS number
---@field C BALATRO.Colours
---@field UIT BALATRO.UIT.Enum
---@field handlist BALATRO.HandList
---@field button_mapping BALATRO.ButtonMapping
---@field keybind_mapping BALATRO.KeybindMapping[]


---@class BALATRO.Game : BALATRO.Game.Class, BALATRO.Game.Globals
---@field SOUND_MANAGER BALATRO.Game.Manager.Sound
---@field SAVE_MANAGER BALATRO.Game.Manager.Save
---@field HTTP_MANAGER BALATRO.Game.Manager.HTTP
---@field SHADERS BALATRO.SHADERS
---@field CONTROLLER BALATRO.Controller
---@field BRUTE_OVERLAY? BALATRO.UI.Colour
---@field shared_debuff BALATRO.Sprite
---@field shared_soul BALATRO.Sprite
---@field shared_undiscovered_joker BALATRO.Sprite
---@field shared_undiscovered_tarot BALATRO.Sprite
---@field shared_sticker_eternal BALATRO.Sprite
---@field shared_sticker_perishable BALATRO.Sprite
---@field shared_sticker_rental BALATRO.Sprite
---@field shared_stickers BALATRO.Game.SharedStickers
---@field shared_seals BALATRO.Game.SharedSeals
---@field sticker_map BALATRO.Game.StickerMap
---@field STAGE_OBJECT_INTERRUPT? boolean
---@field CURSOR BALATRO.Sprite
---@field E_MANAGER BALATRO.EventManager
---@field SPEEDFACTOR number
---@field LOADING? { font: love.Font } | [unknown]
---@field ROOM_PADDING_H number
---@field ROOM_PADDING_W number
---@field WINDOWTRANS BALATRO.Game.WINDOWTRANS
---@field window_prev BALATRO.Game.WindowPrev
---@field P_SEALS BALATRO.P_SEALS
---@field P_TAGS BALATRO.P_TAGS
---@field tag_undiscovered BALATRO.Prototype.Tag.Empty
---@field P_STAKES BALATRO.P_STAKES
---@field P_BLINDS BALATRO.P_BLINDS
---@field b_undiscovered BALATRO.Prototype.Blind.Empty
---@field P_CARDS BALATRO.P_CARDS
---@field j_locked BALATRO.Prototype.Empty.Joker
---@field v_locked BALATRO.Prototype.Empty.Voucher
---@field c_locked BALATRO.Prototype.Empty.Tarot
---@field j_undiscovered BALATRO.Prototype.Empty.Joker
---@field t_undiscovered BALATRO.Prototype.Empty.Tarot
---@field p_undiscovered BALATRO.Prototype.Empty.Planet
---@field s_undiscovered BALATRO.Prototype.Empty.Spectral
---@field v_undiscovered BALATRO.Prototype.Empty.Voucher
---@field booster_undiscovered BALATRO.Prototype.Empty.Booster
---@field P_CENTERS BALATRO.P_CENTERS
---@field P_CENTER_POOLS BALATRO.Prototype.CENTER_POOLS
---@field P_JOKER_RARITY_POOLS table<number, BALATRO.Prototype.Joker[]>
---@field P_LOCKED BALATRO.Center[]
---@field LANGUAGES BALATRO.LANGUAGES
---@field FONTS BALATRO.FONTS
---@field LANG BALATRO.Language
---@field localization BALATRO.LOCTABLE
---@field animation_atli BALATRO.Atlas.Index.Animation[]
---@field asset_atli BALATRO.Atlas.Index.Asset[]
---@field asset_images BALATRO.Atlas.Index.Base[]
---@field tagid number
---@field sort_id number
---@field shop_demo? BALATRO.CardArea
---@field last_materialized? number
local Game = {}


---@class BALATRO.Game.Class : BALATRO.Object.Super
---@field init fun(self: BALATRO.Game)
---@field set_globals fun(self: BALATRO.Game)
---@field start_up fun(self: BALATRO.Game)
---@field load_profile fun(self: BALATRO.Game, profile: number)
---@field init_item_prototypes fun(self: BALATRO.Game)
---@field set_language fun(self: BALATRO.Game)
---@field set_render_settings fun(self: BALATRO.Game)
---@field init_window fun(self: BALATRO.Game, reset?: boolean)
---@field delete_run fun(self: BALATRO.Game)


--- `Game()` - Creates a new [Game](lua://BALATRO.Game) object
---@return BALATRO.Game
_G.Game = function() end
