---@meta


---@class (exact) BALATRO.Game.Globals
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
---@field PROFILES BALATRO.Game.Profile[]
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
---@field ANIMATION_ATLAS table<BALATRO.Atlas.Animation.Type, BALATRO.Atlas.Animation>
---@field ASSET_ATLAS table<BALATRO.Atlas.Assets.Type, BALATRO.Atlas.Asset>
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


---@class (exact) BALATRO.Game : BALATRO.Game.Class, BALATRO.Game.Globals
---@field SOUND_MANAGER BALATRO.Game.Manager.Sound
---@field SAVE_MANAGER BALATRO.Game.Manager.Save
---@field HTTP_MANAGER BALATRO.Game.Manager.HTTP
---@field SHADERS BALATRO.SHADERS
---@field CONTROLLER BALATRO.Controller
local Game = {}


---@class (exact) BALATRO.Game.Class : BALATRO.Object.Super
---@field init fun(self: BALATRO.Game)
---@field set_globals fun(self: BALATRO.Game)
---@field start_up fun(self: BALATRO.Game)


--- `Game()` - Creates a new [Game](lua://BALATRO.Game) object
---@return BALATRO.Game
_G.Game = function() end
