---@meta


---@alias BALATRO.VersionType string | "1.0.1n-FULL" | "1.0.1o-FULL"

---@alias BALATRO.Settings BALATRO.Settings.Base | BALATRO.Settings.Extra
---@alias BALATRO.Settings.WINDOW.Screenmode string | "Fullscreen" | "Windowed" | "Borderless"

---@alias BALATRO.UIObject.Animation BALATRO.Sprite | BALATRO.AnimatedSprite
---@alias BALATRO.UIObject.Base BALATRO.Node | BALATRO.Moveable
---@alias BALATRO.UIObject.UI BALATRO.UIBox | BALATRO.UIElement
---@alias BALATRO.UIObject.Sprite BALATRO.Sprite | BALATRO.AnimatedSprite
---@alias BALATRO.UIObejct.BaseUI BALATRO.Node | BALATRO.Moveable | BALATRO.UIBox | BALATRO.UIElement
---@alias BALATRO.ARGS BALATRO.ARGS.Base | BALATRO.ARGS.Extra | BALATRO.ARGS.Empty
---@alias BALATRO.Settings.WINDOW.Display BALATRO.Settings.WINDOW.Display.Base | BALATRO.Settings.WINDOW.Display.Extra


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
---@alias BALATRO.Sandbox BALATRO.Sandbox.Base | BALATRO.Sandbox.Extra


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

---@class BALATRO.Settings.WINDOW.Display.ScreenResolution
---@field strings string[]
---@field values BALATRO.UI.Resolution


---@class BALATRO.Settings.WINDOW.Display.Base
---@field name string
---@field screen_res BALATRO.UI.Resolution


---@class BALATRO.Settings.WINDOW.Display.Extra
---@field screen_resolutions BALATRO.Settings.WINDOW.Display.ScreenResolution


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
---@field language BALATRO.Language.Key
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
---@field skip_splash? string | boolean
---@field tutorial_complete? boolean
---@field perf_mode? boolean
---@field current_setup? string
---@field screen_res? BALATRO.UI.Resolution


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


---@class BALATRO.FileHandler
---@field settings? boolean
---@field update_queued? boolean
---@field progress? boolean
---@field force? boolean
---@field last_sent_stage? number
---@field last_sent_time? number
---@field last_sent_pause? boolean
---@field metrics? boolean
---@field run? boolean


---@class BALATRO.ARGS.SaveProgress
---@field UDA table<string, string>
---@field SETTINGS BALATRO.Settings
---@field PROFILE BALATRO.Profile


---@class BALATRO.ARGS.Spin
---@field amount number
---@field real number
---@field eased number


---@class BALATRO.ARGS.EasedCursorPos
---@field x number
---@field y number
---@field sy number
---@field sx number


---@class BALATRO.ARGS.EventManagerUpdate
---@field blocking? boolean
---@field completed? boolean
---@field time_done? boolean
---@field pause_skip? boolean


---@class BALATRO.ARGS.FocusList
---@field node BALATRO.UIObject
---@field dist? number


---@class BALATRO.ARGS.Base
---@field collides_with_point_point BALATRO.Node.Point
---@field collides_with_point_translation BALATRO.Node.Point
---@field collides_with_point_rotation BALATRO.Node.Rotation
---@field set_offset_point BALATRO.Node.Point
---@field set_offset_translation BALATRO.Node.Point
---@field drag_cursor_trans BALATRO.Node.Point
---@field drag_translation BALATRO.Node.Point
---@field get_major BALATRO.Moveable.ARGS.get_major
---@field xywh_node_trans BALATRO.Node.Transform
---@field text_parallax BALATRO.UIElement.Parallax
---@field button_colours BALATRO.UI.Colour[]
---@field FUNC_TRACKER table<string, number>
---@field prep_shader BALATRO.ARGS.prep_shader
---@field send_to_shader number[]
---@field invisible_area_types? BALATRO.ARGS.area_types
---@field draw_layers? string[]
---@field draw_shadow_norm BALATRO.Node.Point
---@field draw_from_offset? BALATRO.Node.Point
---@field save_progress? BALATRO.ARGS.SaveProgress
---@field save_settings? BALATRO.Settings
---@field save_metrics? BALATRO.Game.METRICS
---@field spin BALATRO.ARGS.Spin
---@field HIGH_SCORE_RESPONSE? unknown
---@field event_manager_update BALATRO.ARGS.EventManagerUpdate


---@class BALATRO.ARGS.Extra
---@field eased_cursor_pos? BALATRO.ARGS.EasedCursorPos
---@field voucher_tag? table<string, boolean>
---@field gamepad_patterns? table<string, string[]>
---@field focus_list BALATRO.ARGS.FocusList[]
---@field focusables BALATRO.UIObject[]
---@field focus_cursor_pos BALATRO.Node.Point
---@field focus_vec BALATRO.Node.Point
---@field screenmode_vals BALATRO.Settings.WINDOW.Screenmode[]


---@class BALATRO.ARGS.Empty


---@class BALATRO.Sandbox.Base
---@field vort_time number
---@field vort_speed number
---@field col_op string[]
---@field col1 BALATRO.UI.Colour
---@field col2 BALATRO.UI.Colour
---@field mid_flash number
---@field joker_text string
---@field edition string
---@field tilt number
---@field card_size number
---@field base_size BALATRO.UI.Resolution
---@field gamespeed number


---@class BALATRO.Sandbox.Extra
---@field file_reload_timer? number
---@field UI BALATRO.UIBox
---@field joker? BALATRO.Card

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


---@class BALATRO.Game.RunArgs
---@field savetext? BALATRO.SavedGame
---@field challenge? BALATRO.Challenge
---@field stake? number
---@field seed? string | number


---@class BALATRO.Game.HandTextArea
---@field chips BALATRO.UIElement
---@field mult BALATRO.UIElement
---@field ante BALATRO.UIElement
---@field round BALATRO.UIElement
---@field chip_total BALATRO.UIElement
---@field handname BALATRO.UIElement
---@field hand_level BALATRO.UIElement
---@field game_chips BALATRO.UIElement
---@field blind_chips BALATRO.UIElement
---@field blind_spacer BALATRO.UIElement


------------------------------------------------------------------------------
-- OTHER
------------------------------------------------------------------------------

---@alias BALATRO.SavedGame BALATRO.SavedGame.Base | BALATRO.SavedGame.Extra
---@alias BALATRO.Seed string | number
---@alias BALATRO.DISCOVER_TALLIES BALATRO.DISCOVER_TALLIES.Base | table<string, BALATRO.ProgressTally>
---@alias BALATRO.PROGRESS BALATRO.PROGRESS.Base | table<string, BALATRO.ProgressTally>


---@class BALATRO.SavedGame.Action
---@field card? number


---@class BALATRO.SavedGame.CardAreas
---@field shop_jokers? BALATRO.CardArea.SaveTable
---@field shop_boosters? BALATRO.CardArea.SaveTable
---@field shop_vouchers? BALATRO.CardArea.SaveTable
---@field jokers? BALATRO.CardArea.SaveTable
---@field consumeables? BALATRO.CardArea.SaveTable
---@field hand? BALATRO.CardArea.SaveTable


---@class BALATRO.SavedGame.Base
---@field GAME? BALATRO.GameObject
---@field STATE? number
---@field BLIND? BALATRO.Blind.SaveTable
---@field BACK? BALATRO.Back.SaveTable
---@field ACTION? BALATRO.SavedGame.Action


---@class BALATRO.SavedGame.Extra
---@field cardAreas? BALATRO.SavedGame.CardAreas
---@field tags? BALATRO.Tag.SaveTable[]


---@class BALATRO.ProgressTally
---@field tally number
---@field of number


---@class BALATRO.DISCOVER_TALLIES.Base
---@field blinds BALATRO.ProgressTally
---@field tags BALATRO.ProgressTally
---@field jokers BALATRO.ProgressTally
---@field consumeables BALATRO.ProgressTally
---@field tarots BALATRO.ProgressTally
---@field planets BALATRO.ProgressTally
---@field spectrals BALATRO.ProgressTally
---@field vouchers BALATRO.ProgressTally
---@field boosters BALATRO.ProgressTally
---@field editions BALATRO.ProgressTally
---@field backs BALATRO.ProgressTally
---@field total BALATRO.ProgressTally


---@class BALATRO.PROGRESS.Base
---@field joker_stickers BALATRO.ProgressTally
---@field deck_stakes BALATRO.ProgressTally
---@field challenges BALATRO.ProgressTally
