---@meta


---@alias BALATRO.Calc.Eval
---| BALATRO.Calc.Eval.Base 
---| BALATRO.Calc.Eval.Extra
---| BALATRO.Calc.Eval.Effect
---| BALATRO.Calc.Eval.Empty


---@alias BALATRO.Calc.Context
---| BALATRO.Calc.Context.Base
---| BALATRO.Calc.Context.Extra
---| BALATRO.Calc.Context.Empty


---@alias BALATRO.Calc.Tag BALATRO.Calc.Tag.Base | BALATRO.Calc.Tag.Extra
---@alias BALATRO.Calc.Tag.Eval BALATRO.Calc.Tag.Eval.Base | boolean | BALATRO.Card


---@class BALATRO.Calc.Context.Base
---@field repetition? boolean
---@field discard? boolean
---@field joker_main? boolean
---@field scoring_name BALATRO.Hand.Type
---@field blueprint? number
---@field open_booster? boolean
---@field buying_card? boolean
---@field selling_self? boolean
---@field selling_card? boolean
---@field reroll_shop? boolean
---@field ending_shop? boolean
---@field skip_blind? boolean
---@field skipping_booster? boolean
---@field playing_card_added? boolean
---@field first_hand_drawn? boolean
---@field setting_blind? boolean
---@field destroying_card? BALATRO.Card
---@field cards_destroyed? BALATRO.Card[]
---@field glass_shattered? BALATRO.Card[]
---@field remove_playing_cards? boolean
---@field removed BALATRO.Card[]
---@field using_consumeable? boolean
---@field consumeable? BALATRO.Card
---@field debuffed_hand? boolean
---@field pre_discard? boolean
---@field hook? boolean
---@field other_card BALATRO.Card
---@field end_of_round? boolean
---@field individual? boolean
---@field card_effects BALATRO.Calc.Eval.Effect[]
---@field game_over? boolean
---@field cards BALATRO.Card[]
---@field blind BALATRO.Prototype.Blind
---@field card BALATRO.Card
---@field blueprint_card BALATRO.Card
---@field full_hand BALATRO.Card[]
---@field cardarea BALATRO.CardArea
---@field scoring_hand BALATRO.Card[]
---@field other_joker? BALATRO.Card
---@field before? boolean
---@field poker_hands? table<BALATRO.Hand.Type, BALATRO.Hand.Eval>
---@field after? boolean


---@class BALATRO.Calc.Context.Extra


---@class BALATRO.Calc.Context.Empty


---@class BALATRO.Calc.Eval.Base
---@field colour? BALATRO.UI.Colour
---@field card BALATRO.Card


---@class BALATRO.Calc.Eval.Extra


---@class BALATRO.Calc.Eval.Empty


---@class BALATRO.Calc.Eval.Effect
---@field h_dollars number
---@field effect? boolean


---@class BALATRO.Calc.Tag.Eval.Base
---@field dollars number
---@field condition string
---@field pos BALATRO.Node.Point
---@field tag BALATRO.Tag


---@class BALATRO.Calc.Tag.Base
---@field type BALATRO.Prototype.Tag.Config.Type


---@class BALATRO.Calc.Tag.Extra
---@field card BALATRO.Card
---@field area BALATRO.CardArea
---@field tag BALATRO.Tag
