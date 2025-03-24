---@meta


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
---@field type? string | "polychrome" | "negative" | "foil" | "holo"
---@field mult? number
---@field chips? number
---@field x_mult? number


---@class BALATRO.Card.Front
---@field name string
---@field label? string
---@field suit string
---@field value string
---@field pos BALATRO.Node.Point
---@field atlas? string
---@field no_ui? boolean


---@alias BALATRO.Card.Config.Extra number | BALATRO.Card.Center.Config
---@alias BALATRO.Card.DrawLayer string | "both" | "front" | "back" | "shadow"


---@class BALATRO.Card.Center.Config
---@field bonus? number
---@field mult? number
---@field h_mult? number
---@field h_x_mult? number
---@field h_dollars? number
---@field p_dollars? number
---@field t_mult? number
---@field t_chips? number
---@field Xmult? number
---@field h_size? number
---@field d_size? number
---@field extra? BALATRO.Card.Config.Extra
---@field type? string
---@field discards? number
---@field every? number
---@field h_plays? number
---@field size? number
---@field hand_add? string
---@field discard_sub? string
---@field s_mult? number
---@field suit? string
---@field dollars? number
---@field faces? number
---@field min? number
---@field max? number
---@field d_remaining? number
---@field chips? number
---@field chip_mod? string | number
---@field odds? number
---@field poker_hand? string
---@field h_mod? number
---@field xmult? number
---@field max_highlighted? number
---@field mod_conv? number | string
---@field hand_type? string
---@field suit_conv? number | string
---@field remove_card? boolean
---@field destroy? number
---@field tarots? number
---@field planets? number
---@field mod_num? number
---@field increase? number


---@class BALATRO.Card.Center
---@field set? BALATRO.Card.Ability.Set
---@field atlas? string
---@field alerted? boolean
---@field discovered? boolean
---@field order number
---@field unlocked? boolean
---@field consumeable? boolean
---@field demo? boolean
---@field pos BALATRO.Node.Point
---@field name string
---@field soul_pos? BALATRO.Node.Point
---@field config BALATRO.Card.Center.Config
---@field effect? string
---@field cost number
---@field label? string
---@field eternal_compat? boolean
---@field perishable_compat? boolean
---@field increase? number
---@field rarity? number


---@class (exact) BALATRO.Card.Config
---@field card? BALATRO.Card.Front
---@field center BALATRO.Card.Center
---@field card_key? string
---@field center_key? string
---@field h_popup? BALATRO.UI.Object
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


---@alias BALATRO.Card.Seal string | number


---@alias BALATRO.Card.Ability.Set string | "Joker" | "Booster" | "Tarot" | "Planet" | "Edition" | "Spectral" | "Voucher" | "Default" | "Enhanced"


---@class BALATRO.Card.Ability
---@field set BALATRO.Card.Ability.Set
---@field name? string
---@field consumeable? BALATRO.Card.Center.Config
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
---@field extra? BALATRO.Card.Config.Extra
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


---@class BALATRO.Card : BALATRO.Card.Class, BALATRO.Card.Params
---@field params BALATRO.Card.Params
---@field config BALATRO.Card.Config
---@field tilt_var BALATRO.TiltVar
---@field ambient_tilt number
---@field sort_id number
---@field back string | "selected_back" | "viewed_back"
---@field children BALATRO.UI.Object[] | table<string, BALATRO.UI.Object>
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
---@field ability_UIBox_table? UINode[]
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
---@field vortext? boolean
---@field back_overlay? number[]
---@field pinned? boolean
---@field removed? boolean
local Card = {}


---@class BALATRO.Card.Class : BALATRO.Moveable.Super
---@field init fun(self, X, Y, W, H, card, center, params)
---@field update_alert fun(self: BALATRO.Card)
---@field set_base fun(self: BALATRO.Card, card?: BALATRO.Card.Front, initial?: boolean)
---@field set_sprites fun(self: BALATRO.Card, center?: BALATRO.Card.Center, front?: BALATRO.Card.Front)
---@field set_ability fun(self: BALATRO.Card, center?: BALATRO.Card.Center, initial?: boolean, delay_sprites?: boolean)
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
---@field generate_UIBox_unlock_table fun(self: BALATRO.Card, hidden?: boolean) : UINode[]
---@field generate_UIBox_ability_table fun(self: BALATRO.Card): UINode[]
---@field get_nominal fun(self: BALATRO.Card, mod?: string): number
---@field get_id fun(self: BALATRO.Card): number
---@field is_face fun(self: BALATRO.Card, from_boss?: boolean): boolean?
---@field get_original_rank fun(self: BALATRO.Card): string?
---@field get_chip_bonus fun(self: BALATRO.Card): number
---@field get_chip_mult fun(self: BALATRO.Card): number
---@field get_chip_x_mult fun(self: BALATRO.Card): number
---@field get_chip_h_mult fun(self: BALATRO.Card): number
---@field get_chip_h_x_mult fun(self: BALATRO.Card): number
---@field get_edition fun(self: BALATRO.Card): BALATRO.Card.Edition.Ret?
---@field draw fun(self: BALATRO.Card, layer?: BALATRO.Card.DrawLayer)


---@alias BALATRO.Card.Callable BALATRO.Card | fun(X: number, Y: number, W: number, H: number, card: BALATRO.Card.Front, center: BALATRO.Card.Center, params?: BALATRO.Card.Params)


--- Creates a new game Card
---@param self BALATRO.Card
---@param X number
---@param Y number
---@param W number
---@param H number
---@param card BALATRO.Card.Front
---@param center BALATRO.Card.Center
---@param params BALATRO.Card.Params
function Card.init(self, X, Y, W, H, card, center, params) end
