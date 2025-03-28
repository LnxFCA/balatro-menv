---@meta


---@alias BALATRO.VersionType string | "1.0.1n-FULL" | "1.0.1o-FULL"

---@alias BALATRO.Settings BALATRO.Settings.Base | BALATRO.Settings.Extra
---@alias BALATRO.Settings.WINDOW.Screenmode string | "Fullscreen" | "Windowed" | "Borderless"

---@alias BALATRO.UIObject.Animation BALATRO.Sprite | BALATRO.AnimatedSprite
---@alias BALATRO.UIObject.Base BALATRO.Node | BALATRO.Moveable
---@alias BALATRO.UIObject.UI BALATRO.UIBox | BALATRO.UIElement
---@alias BALATRO.UIObject.Sprite BALATRO.Sprite | BALATRO.AnimatedSprite
---@alias BALATRO.UIObejct.BaseUI BALATRO.Node | BALATRO.Moveable | BALATRO.UIBox | BALATRO.UIElement


---@alias BALATRO.UIObject
---| BALATRO.Node
---| BALATRO.Moveable
---| BALATRO.UIBox
---| BALATRO.UIElement
---| BALATRO.Sprite
---| BALATRO.AnimatedSprite
---| BALATRO.DynaText
---| BALATRO.Particles
---| BALATRO.Blind
---| BALATRO.Card
---| BALATRO.CardArea
---| BALATRO.Card_Character

---@alias BALATRO.ButtonMapping BALATRO.ButtonMapping.Base | table<string, string>
---@alias BALATRO.KeybindMapping BALATRO.KeybindMapping.Base | table<string, string>


---@class BALATRO.Settings.TutorialProgress



---@class BALATRO.Settings.COMP
---@field name string
---@field prev_name string
---@field submission_name? boolean
---@field score number


---@class BALATRO.Settings.DEMO
---@field total_uptime number
---@field timed_CTA_shown boolean
---@field win_CTA_shown boolean
---@field quit_CTA_shown boolean


---@class BALATRO.Settings.AchievementsEarned


---@class BALATRO.Settings.SOUND
---@field volume number
---@field music_volume number
---@field game_sounds_volume number


---@class BALATRO.Settings.WINDOW.Display
---@field name string
---@field screen_res BALATRO.UI.Resolution


---@class BALATRO.Settings.WINDOW
---@field screenmode BALATRO.Settings.WINDOW.Screenmode
---@field vsync number
---@field selected_display number
---@field display_names string[]
---@field DISPLAYS BALATRO.Settings.WINDOW.Display[]


---@class BALATRO.Settings.CUSTOM_DECK.Collabs
---@field Spades string
---@field Hearts string
---@field Clubs string
---@field Diamonds string


---@class BALATRO.Settings.CUSTOM_DECK
---@field Collabs BALATRO.Settings.CUSTOM_DECK.Collabs



---@class BALATRO.Settings.GRAPHICS
---@field texture_scaling number
---@field shadows string
---@field crt number
---@field bloom number


---@class BALATRO.Settings.QueuedChange
---@field vsync? number
---@field screenmode? BALATRO.Settings.WINDOW.Screenmode
---@field screenres? BALATRO.UI.Resolution
---@field selected_display? number


---@class BALATRO.Settings.MusicControl
---@field desired_track string
---@field current_track string
---@field lerp number


---@class (exact) BALATRO.Settings.Base
---@field COMP BALATRO.Settings.COMP
---@field DEMO BALATRO.Settings.DEMO
---@field ACHIEVEMENTS_EARNED BALATRO.Settings.AchievementsEarned
---@field crashreports boolean
---@field colourblind_option boolean
---@field language BALATRO.Language.Type
---@field screenshake boolean
---@field run_stake_stickers boolean
---@field rumble number
---@field play_button_pos number
---@field GAMESPEED number
---@field paused boolean
---@field SOUND BALATRO.Settings.SOUND
---@field WINDOW BALATRO.Settings.WINDOW
---@field CUSTOM_DECK BALATRO.Settings.CUSTOM_DECK
---@field GRAPHICS BALATRO.Settings.GRAPHICS


---@class (exact) BALATRO.Settings.Extra
---@field profile number
---@field tutorial_progress? BALATRO.Settings.TutorialProgress
---@field version BALATRO.VersionType
---@field paused? boolean
---@field QUEUED_CHANGE BALATRO.Settings.QueuedChange
---@field music_control BALATRO.Settings.MusicControl
---@field reduced_motion? boolean


---@class BALATRO.Instances
---@field NODE BALATRO.Node[]
---@field MOVEABLE BALATRO.Moveable[]
---@field SPRITE BALATRO.Sprite[]
---@field UIBOX BALATRO.UIBox[]
---@field CARD BALATRO.Card[]
---@field CARDAREA BALATRO.CardArea[]
---@field ALERT BALATRO.UIBox[]
---@field POPUP BALATRO.UIBox[]


---@class BALATRO.ButtonMapping.Base
---@field a? string
---@field b? string
---@field x? string
---@field y? string


---@class BALATRO.KeybindMapping.Base
---@field a string
---@field w string
---@field s string
---@field d string
---@field x string
---@field c string
---@field space string
---@field shift string
---@field esc string
---@field q string
---@field e string


------------------------------------------------------------------------------
-- GAME
------------------------------------------------------------------------------


---@alias BALATRO.Game.ExpTimes BALATRO.Game.ExpTimes.Base | BALATRO.Game.ExpTimes.Extra
---@alias BALATRO.Game.COLLABS.Options BALATRO.Game.COLLABS.Options.Base | table<string, string[]>
---@alias BALATRO.Game.STATES BALATRO.Game.STATES.Base | table<string, number>
---@alias BALATRO.Game.STAGES BALATRO.Game.STAGES.Base | table<string, number>
---@alias BALATRO.Game.StageObject BALATRO.Card | BALATRO.DynaText | BALATRO.UIElement | BALATRO.UIBox
---@alias BALATRO.Game.SharedStickers BALATRO.Game.Shared.Stickers | table<string, BALATRO.Sprite>
---@alias BALATRO.Game.SharedSeals BALATRO.Game.Shared.Base | table<string, BALATRO.Sprite>
---@alias BALATRO.Game.StickerMap.Value string | "White" | "Red" | "Green" | "Black" | "Blue" | "Purple" | "Gold"
---@alias BALATRO.Game.StickerMap BALATRO.Game.StickerMap.Value[]


---@class (exact) BALATRO.Game.TIMERS
---@field TOTAL number
---@field REAL number
---@field REAL_SHADER number
---@field UPTIME number
---@field BACKGROUND number


---@class BALATRO.Game.ExpTimes.Base
---@field xy number
---@field scale number
---@field r number


---@class BALATRO.Game.ExpTimes.Extra : BALATRO.Game.ExpTimes.Base
---@field max_vel number


---@class BALATRO.Game.COLLABS.Options.Base
---@field Spades string[]
---@field Hearts string[]
---@field Clubs string[]
---@field Diamonds string[]


---@class BALATRO.Game.COLLABS.Pos
---@field King BALATRO.Node.Point
---@field Queen BALATRO.Node.Point
---@field Jack BALATRO.Node.Point


---@class BALATRO.Game.COLLABS
---@field pos  BALATRO.Game.COLLABS.Pos | table<string, BALATRO.Node.Point>
---@field options BALATRO.Game.COLLABS.Options


---@class BALATRO.Game.METRICS.Cards
---@field used table<string, number>
---@field bought table<string, number>
---@field appeared table<string, number>


---@class BALATRO.Game.METRICS.Decks
---@field chosen table<string, number>
---@field win table<string, number>
---@field lose table<string, number>


---@class BALATRO.Game.METRICS.Bosses
---@field faced table<string, number>
---@field win table<string, number>
---@field lose table<string, number>


---@class BALATRO.Game.METRICS
---@field cards BALATRO.Game.METRICS.Cards
---@field decks BALATRO.Game.METRICS.Decks
---@field bosses BALATRO.Game.METRICS.Bosses


---@class BALATRO.Game.STATES.Base
---@field SELECTING_HAND number
---@field HAND_PLAYED number
---@field GAME_OVER number
---@field SHOP number
---@field PLAY_TAROT number
---@field BLIND_SELECT number
---@field ROUND_EVAL number
---@field TAROT_PACK number
---@field PLANET_PACK number
---@field MENU number
---@field TUTORIAL number
---@field SPLASH number
---@field SANDBOX number
---@field SPECTRAL_PACK number
---@field DEMO_CTA number
---@field STANDARD_PACK number
---@field BUFFOON_PACK number
---@field NEW_ROUND number


---@class BALATRO.Game.STAGES.Base
---@field MAIN_MENU number
---@field RUN number
---@field SANDBOX number


---@class BALATRO.Game.Manager.Sound
---@field thread love.Thread
---@field channel love.Channel
---@field load_channel love.Channel


---@class BALATRO.Game.Manager.Save
---@field thread love.Thread
---@field channel love.Channel


---@class BALATRO.Game.Manager.HTTP
---@field thread love.Thread
---@field out_channel love.Channel
---@field in_channel love.Channel


---@class BALATRO.Game.Shared.Base
---@field Gold BALATRO.Sprite
---@field Purple BALATRO.Sprite
---@field Red BALATRO.Sprite
---@field Blue BALATRO.Sprite


---@class BALATRO.Game.Shared.Stickers
---@field White BALATRO.Sprite
---@field Green BALATRO.Sprite
---@field Black BALATRO.Sprite
---@field Orange BALATRO.Sprite


---@class BALATRO.Game.WINDOWTRANS
---@field x number
---@field y number
---@field w number
---@field h number
---@field real_window_w? number
---@field real_window_h? number


---@class BALATRO.Game.WindowPrev
---@field h number
---@field w number
---@field orig_scale number
---@field orig_ratio number
