---@meta


---@alias BALATRO.Card.Edition.Type string | "polychrome" | "negative" | "foil" | "holo"
---@alias BALATRO.Card.Seal string | number
---@alias BALATRO.Card.Ability.Set string | "Joker" | "Booster" | "Tarot" | "Planet" | "Edition" | "Spectral" | "Voucher" | "Default" | "Enhanced" | "Base" | "Tarot_Planet"
---@alias BALATRO.Card.Config.Extra number | BALATRO.Center.Config
---@alias BALATRO.Card.DrawLayer string | "both" | "front" | "back" | "shadow"


---@class BALATRO.TiltVar
---@field mx number
---@field my number
---@field dx number
---@field dy number
---@field amt 0


---@class BALATRO.Card.Juice : BALATRO.Moveable.Juice
---@field scale_amt? number
---@field r_amt? number


---@class BALATRO.Card.Params
---@field playing_card? number | boolean
---@field viewed_back? boolean
---@field bypass_discovery_center? boolean
---@field bypass_discovery_ui? boolean
---@field bypass_lock? boolean
---@field bypass_back? boolean
---@field no_ui? boolean
---@field discover? boolean


---@class BALATRO.Card.Edition.Arg
---@field polychrome? boolean
---@field negative? boolean
---@field foil? boolean
---@field holo? boolean


---@class BALATRO.Card.Edition.Ret
---@field x_mult_mod? number
---@field mult_mod? number
---@field chip_mod? number


---@class BALATRO.Card.Edition
---@field polychrome? boolean
---@field negative? boolean
---@field foil? boolean
---@field holo? boolean
---@field type? BALATRO.Card.Edition.Type
---@field mult? number
---@field chips? number
---@field x_mult? number


---@class (exact) BALATRO.Card.Config
---@field card? BALATRO.Prototype.Card
---@field center BALATRO.Center
---@field card_key? string
---@field center_key? string
---@field h_popup? BALATRO.UI.Node
---@field h_popup_config? BALATRO.UIBox.Config


---@class BALATRO.Card.Base
---@field id? number
---@field name? string
---@field suit? string
---@field value? string
---@field nominal number
---@field suit_nominal number
---@field face_nominal number
---@field colour? BALATRO.UI.Colour
---@field times_played number
---@field original_value? string
---@field suit_nominal_original? number


---@class BALATRO.Card.Ability
---@field set BALATRO.Card.Ability.Set
---@field name? string
---@field consumeable? BALATRO.Center.Config
---@field bonus number | nil
---@field effect? string
---@field mult number
---@field h_mult number
---@field h_x_mult number
---@field h_dollars number
---@field p_dollars number
---@field t_mult number
---@field t_chips number
---@field x_mult number
---@field h_size number
---@field d_size number
---@operator mul:number
---@field extra? BALATRO.Center.Config.Extra
---@field extra_value number
---@field type string
---@field order? number
---@field forced_selection? boolean
---@field perma_bonus number
---@field invis_rounds? number
---@field to_do_poker_hand? BALATRO.PokerHand
---@field caino_xmult? number
---@field yorick_discards? number
---@field burnt_hand? number
---@field loyalty_remaining? number
---@field hands_played_at_create? number
---@field rental? boolean
---@field couponed? boolean
---@field eternal? boolean
---@field perishable? boolean
---@field perish_tally? number
---@field queue_negative_removal? boolean
---@field steel_tally? number
---@field stone_tally? number
---@field blueprint_compat_ui? string
---@field blueprint_compat_check? boolean
---@field nine_tally? number
---@field driver_tally? number | string
---@field money? number
---@field wheel_flipped? boolean
---@field perma_debuff? boolean
---@field blueprint_compat? string
---@field discarded? boolean
---@field played_this_ante? boolean
---@field booster_pos? number


---@class BALATRO.Card.SaveTable
---@field sort_id number
---@field save_fields table<string, unknown> | { card?: string, center: string }
---@field params BALATRO.Card.Params
---@field no_ui? boolean
---@field base_cost number
---@field extra_cost number
---@field cost number
---@field sell_cost number
---@field facing string | "front" | "back"
---@field sprite_facing string | "front" | "back"
---@field flipping? string
---@field highlighted? boolean
---@field debuff boolean
---@field rank? number
---@field added_to_deck? boolean
---@field label string
---@field playing_card? boolean | number
---@field base BALATRO.Card.Base
---@field ability BALATRO.Card.Ability
---@field pinned boolean
---@field edition BALATRO.Card.Edition
---@field seal BALATRO.Card.Seal
---@field bypass_discovery_center? boolean
---@field bypass_discovery_ui? boolean
---@field bypass_lock? boolean


---@class BALATRO.Card.AbilityUIBoxTable


---@class BALATRO.Card : BALATRO.Card.Class, BALATRO.Card.Params
---@field params BALATRO.Card.Params
---@field config BALATRO.Card.Config
---@field tilt_var BALATRO.TiltVar
---@field ambient_tilt number
---@field sort_id number
---@field back string | "selected_back" | "viewed_back"
---@field children BALATRO.UIObject[] | table<string, BALATRO.UIObject>
---@field base_cost number
---@field extra_cost number
---@field cost number
---@field sell_cost number
---@field sell_cost_label number | string
---@field unique_val number
---@field edition? BALATRO.Card.Edition
---@field discard_pos { r: number, x: number, y: number }
---@field facing string | "front" | "back"
---@field sprite_facing string | "front" | "back"
---@field flipping? string
---@field area? BALATRO.CardArea
---@field highlighted boolean
---@field highligted boolean
---@field click_timeout number
---@field debuff boolean
---@field rank? number
---@field added_to_deck? boolean
---@field base BALATRO.Card.Base
---@field ability BALATRO.Card.Ability
---@field sticker_run? boolean | string | integer
---@field sticker? string
---@field label string
---@field mouse_damping number
---@field seal? BALATRO.Card.Seal
---@field eternal? boolean
---@field ability_UIBox_table? BALATRO.Card.AbilityUIBoxTable
---@field vampired? boolean
---@field lucky_trigger? boolean
---@field opening? boolean
---@field shop_voucher? boolean
---@field dissolve? boolean | number
---@field dissolve_colours? BALATRO.UI.Colour[]
---@field juice BALATRO.Card.Juice
---@field shattered? boolean
---@field getting_sliced? boolean
---@field parent BALATRO.CardArea
---@field eligible_strength_jokers? BALATRO.Card[]
---@field eligible_editionless_jokers? BALATRO.Card[]
---@field greyed? boolean
---@field hover_tilt number
---@field no_shadow? boolean
---@field vortex? boolean
---@field back_overlay? number[]
---@field pinned? boolean
---@field removed? boolean
---@field jimbo? BALATRO.Card_Character
---@field from_tag? boolean
---@field temp_edition? boolean
local Card = {}


---@class BALATRO.Card.Class : BALATRO.Moveable.Super
---@field init fun(self, X, Y, W, H, card, center, params)
---@field update_alert fun(self: BALATRO.Card)
---@field set_base fun(self: BALATRO.Card, card?: BALATRO.Prototype.Card, initial?: boolean)
---@field set_sprites fun(self: BALATRO.Card, center?: BALATRO.Center, front?: BALATRO.Prototype.Card)
---@field set_ability fun(self: BALATRO.Card, center?: BALATRO.Center, initial?: boolean, delay_sprites?: boolean)
---@field set_cost fun(self: BALATRO.Card)
---@field set_edition fun(self: BALATRO.Card, edition: BALATRO.Card.Edition.Arg, immediate?: boolean, silent?: boolean)
---@field set_seal fun(self: BALATRO.Card, seal?: BALATRO.Card.Seal, silent?: boolean, immediate?: boolean)
---@field get_seal fun(self: BALATRO.Card, bypass_debug?: boolean): BALATRO.Card.Seal?
---@field set_eternal fun(self: BALATRO.Card, eternal?: boolean)
---@field set_perishable fun(self: BALATRO.Card, perishable?: boolean)
---@field set_rental fun(self: BALATRO.Card, rental?: boolean)
---@field set_debuff fun(self: BALATRO.Card, should_debuff?: boolean)
---@field remove_UI fun(self: BALATRO.Card)
---@field change_suit fun(self: BALATRO.Card, new_suit?: string)
---@field add_to_deck fun(self: BALATRO.Card, from_debuff?: boolean)
---@field remove_from_deck fun(self: BALATRO.Card, from_debuff?: boolean)
---@field generate_UIBox_unlock_table fun(self: BALATRO.Card, hidden?: boolean) : BALATRO.UI.Node[]
---@field generate_UIBox_ability_table fun(self: BALATRO.Card): BALATRO.UI.Node[]
---@field get_nominal fun(self: BALATRO.Card, mod?: string): number
---@field get_id fun(self: BALATRO.Card): number
---@field is_face fun(self: BALATRO.Card, from_boss?: boolean): boolean?
---@field get_original_rank fun(self: BALATRO.Card): string?
---@field get_chip_bonus fun(self: BALATRO.Card): number
---@field get_chip_mult fun(self: BALATRO.Card): number
---@field get_chip_x_mult fun(self: BALATRO.Card, context?: BALATRO.Calc.Context): number
---@field get_chip_h_mult fun(self: BALATRO.Card): number
---@field get_chip_h_x_mult fun(self: BALATRO.Card): number
---@field get_edition fun(self: BALATRO.Card): BALATRO.Card.Edition.Ret?
---@field get_end_of_round_effect fun(self: BALATRO.Card, context?: BALATRO.Calc.Context): BALATRO.Calc.Eval
---@field get_p_dollars fun(self: BALATRO.Card): number
---@field use_consumeable fun(self: BALATRO.Card, area: BALATRO.CardArea, copier?: BALATRO.Card): nil?
---@field can_use_consumeable fun(self: BALATRO.Card, any_state?: boolean, skip_check?: boolean): boolean
---@field check_use fun(self: BALATRO.Card): boolean?
---@field sell_card fun(self: BALATRO.Card)
---@field can_sell_card fun(self: BALATRO.Card, context?: BALATRO.Calc.Context): boolean
---@field calculate_dollar_bonus fun(self: BALATRO.Card): number?
---@field open fun(self: BALATRO.Card)
---@field redeem fun(self: BALATRO.Card)
---@field explode fun(self: BALATRO.Card, dissolve_colours?: BALATRO.UI.Colour[], explode_time_fac?: number)
---@field start_materialize fun(self: BALATRO.Card, dissolve_colours?: BALATRO.UI.Colour[], silent?: boolean, timefac?: number)
---@field shatter fun(self: BALATRO.Card)
---@field start_dissolve fun(self: BALATRO.Card, dissolve_colours?: BALATRO.UI.Colour[], silent?: boolean, dissolve_time_fac?: number, no_juice?: boolean)
---@field calculate_seal fun(self: BALATRO.Card, context?: BALATRO.Calc.Context): BALATRO.Calc.Eval?
---@field calculate_rental fun(self: BALATRO.Card)
---@field calculate_perishable fun(self: BALATRO.Card)
---@field calculate_joker fun(self: BALATRO.Card, context?: BALATRO.Calc.Context): boolean | BALATRO.Calc.Eval?
---@field is_suit fun(self: BALATRO.Card, suit?: string, bypass_debuff?: boolean, flush_calc?: boolean): boolean?
---@field set_card_area fun(self: BALATRO.Card, area?: BALATRO.CardArea)
---@field remove_from_area fun(self: BALATRO.Card)
---@field align fun(self: BALATRO.Card)
---@field flip fun(self: BALATRO.Card)
---@field hard_set_T fun(self: BALATRO.Card, X?: number, Y?: number, W?: number, H?: number)
---@field align_h_popup fun(self: BALATRO.Card): BALATRO.UIBox.Config
---@field draw fun(self: BALATRO.Card, layer?: BALATRO.Card.DrawLayer)
---@field release fun(self: BALATRO.Card, dragged?: BALATRO.Card)
---@field highlight fun(self: BALATRO.Card, is_higlighted?: boolean)
---@field click fun(self: BALATRO.Card)
---@field save fun(self: BALATRO.Card): BALATRO.Card.SaveTable
---@field load fun(self: BALATRO.Card, card: BALATRO.Card.SaveTable, other_card?: BALATRO.Prototype.Card)
---@field remove fun(self: BALATRO.Card)


--- Creates a new game Card
---@param self BALATRO.Card
---@param X number
---@param Y number
---@param W number
---@param H number
---@param card BALATRO.Prototype.Card
---@param center BALATRO.Center
---@param params BALATRO.Card.Params
Card.init = function(self, X, Y, W, H, card, center, params) end


---@overload fun(self?: BALATRO.Card, center?: BALATRO.Center)
---@param self BALATRO.Card
---@param center? BALATRO.Center
Card.apply_to_run = function(self, center) end


--- Check if `T` is an instance of `Card`
---@param self BALATRO.Card
---@param T any
Card.is = function(self, T) end

--- `Card()` - Creates a new [Card](lua://BALATRO.Card) object
---@param X number
---@param Y number
---@param W number
---@param H number
---@param card? BALATRO.Prototype.Card
---@param center BALATRO.Center
---@param params? BALATRO.Card.Params
---@return BALATRO.Card
_G.Card = function (X, Y, W, H, card, center, params) end
_G.Card = Card
