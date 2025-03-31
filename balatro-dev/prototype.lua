---@meta


---@alias BALATRO.Prototype.Base BALATRO.Prototype.Common | BALATRO.Prototype.Extra


---@alias BALATRO.Center.Set.Seal string | "Seal"
---@alias BALATRO.Center.Set.Stake string | "Stake"
---@alias BALATRO.Center.Set.Blind string | "Blind"
---@alias BALATRO.Center.Set.Tag string | "Tag"
---@alias BALATRO.Center.SuitType string | "Hearts" | "Diamonds" | "Clubs" | "Spades"
---@alias BALATRO.Center.Set.Default string | "Default"
---@alias BALATRO.Center.Set.Joker string | "Joker"
---@alias BALATRO.Center.Set.Tarot string | "Tarot"
---@alias BALATRO.Center.Set.Planet string | "Planet"
---@alias BALATRO.Center.Set.Spectral string | "Spectral"
---@alias BALATRO.Center.Set.Voucher string | "Voucher"
---@alias BALATRO.Center.Set.Back string | "Back"
---@alias BALATRO.Center.Set.Enhanced string | "Enhanced"
---@alias BALATRO.Center.Set.Edition string | "Edition"
---@alias BALATRO.Center.Set.Booster string | "Booster"


---@alias BALATRO.Prototype.Seal BALATRO.Prototype.Seal.Base | BALATRO.Prototype.Base
---@alias BALATRO.P_SEALS BALATRO.Prototype.SEALS | table<string, BALATRO.Prototype.Seal>
---@alias BALATRO.Prototype.Tag BALATRO.Prototype.Tag.Base | BALATRO.Prototype.Base | BALATRO.Prototype.Tag.Empty
---@alias BALATRO.P_TAGS BALATRO.Prototype.TAGS | table<string, BALATRO.Prototype.Tag>
---@alias BALATRO.Prototype.Tag.Config.Type string
---| "store_joker_create"
---| "store_joker_modify"
---| "eval"
---| "voucher_add"
---| "immediate"
---| "new_blind_choice"
---| "shop_final_pass"
---| "tag_add"
---| "round_start_bonus"
---| "shop_start"


---@alias BALATRO.Prototype.Stake BALATRO.Prototype.Stake.Base | BALATRO.Prototype.Base
---@alias BALATRO.P_STAKES BALATRO.Prototype.STAKES | table<string, BALATRO.Prototype.Stake>
---@alias BALATRO.Prototype.Blind BALATRO.Prototype.Blind.Base | BALATRO.Prototype.Base | BALATRO.Prototype.Blind.Empty
---@alias BALATRO.P_BLINDS BALATRO.Prototype.BLINDS | table<string, BALATRO.Prototype.Blind>
---@alias BALATRO.Prototype.Card BALATRO.Prototype.Card.Base | BALATRO.Prototype.Base
---@alias BALATRO.P_CARDS BALATRO.Prototype.CARDS | table<string, BALATRO.Prototype.Card>


---@alias BALATRO.Prototype.Default BALATRO.Prototype.Default.Base | BALATRO.Prototype.Center
---@alias BALATRO.Prototype.Joker BALATRO.Prototype.Joker.Base | BALATRO.Prototype.Center | BALATRO.Prototype.Empty.Joker
---@alias BALATRO.Prototype.Tarot BALATRO.Prototype.Tarot.Base | BALATRO.Prototype.Center | BALATRO.Prototype.Empty.Tarot
---@alias BALATRO.Prototype.Planet BALATRO.Prototype.Planet.Base | BALATRO.Prototype.Center | BALATRO.Prototype.Empty.Planet
---@alias BALATRO.Prototype.Spectral BALATRO.Prototype.Spectral.Base | BALATRO.Prototype.Center | BALATRO.Prototype.Empty.Spectral
---@alias BALATRO.Prototype.Voucher BALATRO.Prototype.Voucher.Base | BALATRO.Prototype.Center | BALATRO.Prototype.Empty.Voucher
---@alias BALATRO.Prototype.Back BALATRO.Prototype.Back.Base | BALATRO.Prototype.Center
---@alias BALATRO.Prototype.Enhanced BALATRO.Prototype.Enhanced.Base | BALATRO.Prototype.Center
---@alias BALATRO.Prototype.Edition BALATRO.Prototype.Edition.Base | BALATRO.Prototype.Center
---@alias BALATRO.Prototype.Booster BALATRO.Prototype.Booster.Base | BALATRO.Prototype.Center
---@alias BALATRO.Prototype.Other BALATRO.Prototype.Other.Base | BALATRO.Prototype.Center
---@alias BALATRO.Prototype.Center BALATRO.Prototype.Base | BALATRO.Prototype.Center.Base
---@alias BALATRO.Center
---| BALATRO.Prototype.Default.Base
---| BALATRO.Prototype.Joker.Base
---| BALATRO.Prototype.Tarot.Base
---| BALATRO.Prototype.Planet.Base
---| BALATRO.Prototype.Spectral.Base
---| BALATRO.Prototype.Voucher.Base
---| BALATRO.Prototype.Back.Base
---| BALATRO.Prototype.Enhanced.Base
---| BALATRO.Prototype.Edition.Base
---| BALATRO.Prototype.Booster.Base
---| BALATRO.Prototype.Other.Base
---| BALATRO.Prototype.Center

---@alias BALATRO.P_CENTERS
---| BALATRO.Prototype.JOKERS
---| BALATRO.Prototype.TAROTS
---| BALATRO.Prototype.PLANETS
---| BALATRO.Prototype.SPECTRALS
---| BALATRO.Prototype.VOUCHERS
---| BALATRO.Prototype.BACKS
---| BALATRO.Prototype.ENHANCED
---| BALATRO.Prototype.EDITIONS
---| BALATRO.Prototype.BOOSTERS
---| BALATRO.Prototype.EXTRAS
---| table<string, BALATRO.Center>


---@class BALATRO.Prototype.Extra
---@field key string
---@field demo? boolean
---@field wip? boolean
---@field soul_pos BALATRO.Node.Point


---@class BALATRO.Prototype.Common
---@field order number
---@field name string
---@field unlocked boolean
---@field discovered boolean
---@field pos BALATRO.Node.Point
---@field alerted? boolean


---@class BALATRO.Prototype.Seal.Base
---@field set BALATRO.Center.Set.Seal


---@class BALATRO.Prototype.SEALS
---@field Gold BALATRO.Prototype.Seal
---@field Red BALATRO.Prototype.Seal
---@field Blue BALATRO.Prototype.Seal
---@field Purple BALATRO.Prototype.Seal


---@class BALATRO.Prototype.Tag.Config
---@field type BALATRO.Prototype.Tag.Config.Type
---@field odds? number
---@field edition? BALATRO.Card.Edition.Type
---@field dollars? number
---@field dollars_per_hand? number
---@field dollars_per_discard? number
---@field spawn_jokers? number
---@field skip_bonus? number
---@field levels? number
---@field max? number
---@field h_size? number


---@class BALATRO.Prototype.Tag.Base
---@field set BALATRO.Center.Set.Tag
---@field min_ante number
---@field config BALATRO.Prototype.Tag.Config
---@field requires? string


---@class BALATRO.Prototype.Tag.Empty
---@field name string
---@field order number
---@field config BALATRO.Prototype.Tag.Config
---@field pos BALATRO.Node.Point


---@class BALATRO.Prototype.TAGS
---@field tag_uncommon BALATRO.Prototype.Tag
---@field tag_rare BALATRO.Prototype.Tag
---@field tag_negative BALATRO.Prototype.Tag
---@field tag_foil BALATRO.Prototype.Tag
---@field tag_holo BALATRO.Prototype.Tag
---@field tag_polychrome BALATRO.Prototype.Tag
---@field tag_investment BALATRO.Prototype.Tag
---@field tag_voucher BALATRO.Prototype.Tag
---@field tag_boss BALATRO.Prototype.Tag
---@field tag_standard BALATRO.Prototype.Tag
---@field tag_charm BALATRO.Prototype.Tag
---@field tag_meteor BALATRO.Prototype.Tag
---@field tag_buffoon BALATRO.Prototype.Tag
---@field tag_handy BALATRO.Prototype.Tag
---@field tag_garbage BALATRO.Prototype.Tag
---@field tag_ethereal BALATRO.Prototype.Tag
---@field tag_coupon BALATRO.Prototype.Tag
---@field tag_double BALATRO.Prototype.Tag
---@field tag_juggle BALATRO.Prototype.Tag
---@field tag_d_six BALATRO.Prototype.Tag
---@field tag_top_up BALATRO.Prototype.Tag
---@field tag_skip BALATRO.Prototype.Tag
---@field tag_orbital BALATRO.Prototype.Tag
---@field tag_economy BALATRO.Prototype.Tag


---@class BALATRO.Prototype.Stake.Base
---@field set BALATRO.Center.Set.Stake
---@field stake_level number


---@class BALATRO.Prototype.STAKES
---@field stake_white BALATRO.Prototype.Stake
---@field stake_red BALATRO.Prototype.Stake
---@field stake_green BALATRO.Prototype.Stake
---@field stake_black BALATRO.Prototype.Stake
---@field stake_blue BALATRO.Prototype.Stake
---@field stake_purple BALATRO.Prototype.Stake
---@field stake_orange BALATRO.Prototype.Stake
---@field stake_gold BALATRO.Prototype.Stake



---@class BALATRO.Prototype.Blind.Base
---@field defeated boolean
---@field dollars number
---@field mult number
---@field vars unknown[]
---@field debuff_text? string
---@field debuff BALATRO.Blind.Debuff
---@field boss? BALATRO.Blind.Boss
---@field boss_colour? BALATRO.UI.Colour


---@class BALATRO.Prototype.Blind.Empty
---@field name string
---@field debuff_text string
---@field pos BALATRO.Node.Point


---@class BALATRO.Prototype.BLINDS
---@field bl_small BALATRO.Prototype.Blind
---@field bl_big BALATRO.Prototype.Blind
---@field bl_ox BALATRO.Prototype.Blind
---@field bl_hook BALATRO.Prototype.Blind
---@field bl_mouth BALATRO.Prototype.Blind
---@field bl_fish BALATRO.Prototype.Blind
---@field bl_club BALATRO.Prototype.Blind
---@field bl_manacle BALATRO.Prototype.Blind
---@field bl_tooth BALATRO.Prototype.Blind
---@field bl_wall BALATRO.Prototype.Blind
---@field bl_house BALATRO.Prototype.Blind
---@field bl_mark BALATRO.Prototype.Blind
---@field bl_final_bell BALATRO.Prototype.Blind
---@field bl_wheel BALATRO.Prototype.Blind
---@field bl_arm BALATRO.Prototype.Blind
---@field bl_psychic BALATRO.Prototype.Blind
---@field bl_goad BALATRO.Prototype.Blind
---@field bl_water BALATRO.Prototype.Blind
---@field bl_eye BALATRO.Prototype.Blind
---@field bl_plant BALATRO.Prototype.Blind
---@field bl_needle BALATRO.Prototype.Blind
---@field bl_head BALATRO.Prototype.Blind
---@field bl_final_leaf BALATRO.Prototype.Blind
---@field bl_final_vessel BALATRO.Prototype.Blind
---@field bl_window BALATRO.Prototype.Blind
---@field bl_serpent BALATRO.Prototype.Blind
---@field bl_pillar BALATRO.Prototype.Blind
---@field bl_flint BALATRO.Prototype.Blind
---@field bl_final_acorn BALATRO.Prototype.Blind
---@field bl_final_heart BALATRO.Prototype.Blind


---@class BALATRO.Prototype.Card.Base
---@field value string
---@field suit BALATRO.Center.SuitType
---@field atlas? string
---@field label? string
---@field no_ui? boolean


---@class BALATRO.Prototype.CARDS
---@field H_2 BALATRO.Prototype.Card
---@field H_3 BALATRO.Prototype.Card
---@field H_4 BALATRO.Prototype.Card
---@field H_5 BALATRO.Prototype.Card
---@field H_6 BALATRO.Prototype.Card
---@field H_7 BALATRO.Prototype.Card
---@field H_8 BALATRO.Prototype.Card
---@field H_9 BALATRO.Prototype.Card
---@field H_T BALATRO.Prototype.Card
---@field H_J BALATRO.Prototype.Card
---@field H_Q BALATRO.Prototype.Card
---@field H_K BALATRO.Prototype.Card
---@field H_A BALATRO.Prototype.Card
---@field C_2 BALATRO.Prototype.Card
---@field C_3 BALATRO.Prototype.Card
---@field C_4 BALATRO.Prototype.Card
---@field C_5 BALATRO.Prototype.Card
---@field C_6 BALATRO.Prototype.Card
---@field C_7 BALATRO.Prototype.Card
---@field C_8 BALATRO.Prototype.Card
---@field C_9 BALATRO.Prototype.Card
---@field C_T BALATRO.Prototype.Card
---@field C_J BALATRO.Prototype.Card
---@field C_Q BALATRO.Prototype.Card
---@field C_K BALATRO.Prototype.Card
---@field C_A BALATRO.Prototype.Card
---@field D_2 BALATRO.Prototype.Card
---@field D_3 BALATRO.Prototype.Card
---@field D_4 BALATRO.Prototype.Card
---@field D_5 BALATRO.Prototype.Card
---@field D_6 BALATRO.Prototype.Card
---@field D_7 BALATRO.Prototype.Card
---@field D_8 BALATRO.Prototype.Card
---@field D_9 BALATRO.Prototype.Card
---@field D_T BALATRO.Prototype.Card
---@field D_J BALATRO.Prototype.Card
---@field D_Q BALATRO.Prototype.Card
---@field D_K BALATRO.Prototype.Card
---@field D_A BALATRO.Prototype.Card
---@field S_2 BALATRO.Prototype.Card
---@field S_3 BALATRO.Prototype.Card
---@field S_4 BALATRO.Prototype.Card
---@field S_5 BALATRO.Prototype.Card
---@field S_6 BALATRO.Prototype.Card
---@field S_7 BALATRO.Prototype.Card
---@field S_8 BALATRO.Prototype.Card
---@field S_9 BALATRO.Prototype.Card
---@field S_T BALATRO.Prototype.Card
---@field S_J BALATRO.Prototype.Card
---@field S_Q BALATRO.Prototype.Card
---@field S_K BALATRO.Prototype.Card
---@field S_A BALATRO.Prototype.Card


---@alias BALATRO.Center.Config.Extra number | BALATRO.Center.Config
---@alias BALATRO.Center.Effect string
--- Jokers
---| "Base"
---| "Mult"
---| "Suit Mult"
---| "Type Mult"
---| "Hand Size Mult"
---| "Hand card double"
---| "Credit"
---| "Discard Chips"
---| "No Discard Mult"
---| "Stone card hands"
---| "1 in 10 mult"
---| "Spawn Tarot"
---| "Random Mult"
---| "Socialized Mult"
---| "Bonus Rerolls"
---| "Card Mult"
---| "Steel Card Buff"
---| "Scary Face Cards"
---| "Joker Mult"
---| "Discard dollars"
---| "Low Card double"
---| "All face cards"
---| "Even Card Buff"
---| "Odd Card Buff"
---| "Ace Buff"
---| "Face Card dollar Chance"
---| "Hand played mult"
---| "Upgrade Hand chance"
---| "Hand Size"
---| "Discard Size"
---| "Stone Card Buff"
---| "Bonus dollars"
---| "dollars for Gold cards"
---| "Prevent Death"
---| "Shop size"
---| "Face card double"
---| "Set Mult"
---| "Hand Size, Plays"
---| "Glass Card"
---| "Copycat"
---| "X1.5 Mult club 7"
---| "Jack Discard Effect"
---| "X1.5 Mult"
---| "X2 Mult"
---| "X3 Mult"
---| "Tarot Buff"
---| "Joker"
--- Consumeables
---| "Disable Blind Effect"
---| "Enhance"
---| "Round Bonus"
---| "Dollar Doubler"
---| "Card Removal"
---| "Card Conversion"
---| "Joker Payout"
---| "Suit Conversion"
---| "Random Joker"
--- Planet
---| "Hand Upgrade"
--- Spectral
---| "Unlocker"

---@alias BALATRO.Center.UnlockCondition
---| BALATRO.Center.UnlockCondition.Base
---| BALATRO.Center.UnlockCondition.Common
---| BALATRO.Center.UnlockCondition.Joker
---| BALATRO.Center.UnlockCondition.Voucher
---| BALATRO.Center.UnlockCondition.Back


---@class BALATRO.Center.UnlockCondition.Base
---@field type string


---@class BALATRO.Center.UnlockCondition.Common
---@field ante number
---@field stake number
---@field hidden boolean


---@class BALATRO.Center.UnlockCondition.Joker
---@field n_rounds number
---@field chips number
---@field tarot_count number
---@field planet_count number


---@class BALATRO.Center.UnlockCondition.Back
---@field type string
---@field amount number
---@field deck string


---@class BALATRO.Center.UnlockCondition.Voucher
---@field type string
---@field extra number | BALATRO.Center.Config.Extra


---@class BALATRO.Prototype.Center.Base
---@field cost number
---@field effect BALATRO.Center.Effect
---@field config BALATRO.Center.Config
---@field cost_mult number
---@field unlock_condition BALATRO.Center.UnlockCondition


---@class BALATRO.Prototype.Empty.Base
---@field unlocked boolean
---@field max number
---@field name string
---@field pos BALATRO.Node.Point
---@field cost_mult number
---@field config BALATRO.Center.Config


---@class BALATRO.Prototype.Default.Config


---@class BALATRO.Prototype.Default.Base
---@field max number
---@field freq number
---@field line string
---@field name string
---@field config BALATRO.Prototype.Default.Config


---@alias BALATRO.Center.Enhancement string
---| "m_lucky"
---| "m_mult"
---| "m_bonus"
---| "m_wild"
---| "m_steel"
---| "m_glass"
---| "m_gold"
---| "up_rank"
---| "m_stone"


---@class BALATRO.Center.Config
---@operator add:number
---@field extra? number | BALATRO.Center.Config
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
---@field type? string
---@field discards? number
---@field every? number
---@field h_plays? number
---@field size? number
---@field discard_sub? number
---@field s_mult? number
---@field suit? BALATRO.Center.SuitType
---@field dollars? number
---@field faces? number
---@field min? number
---@field max? number
---@field d_remaining? number
---@field chips? number
---@field chip_mod? number
---@field odds? number
---@field poker_hand? BALATRO.Hand.Type
---@field h_mod? number
---@field xmult? number
---@field max_highlighted? number
---@field mod_conv? BALATRO.Center.Enhancement
---@field hand_type? BALATRO.Hand.Type
---@field suit_conv? BALATRO.Center.SuitType
---@field remove_card? boolean
---@field destroy? number
---@field tarots? number
---@field planets? number
---@field mod_num? number
---@field increase? number
---@field choose? number
---@field min_highlighted? number
---@field softlock? boolean
---@field extra_disp? number
---@field spectral_rate? number
---@field consumables? string[]
---@field hands? number
---@field joker_slot? number
---@field extra_hand_bonus? number
---@field extra_discard_bonus? number
---@field no_interest? boolean
---@field voucher? string
---@field vouchers? string[]
---@field hand_size? number
---@field consumable_slot? number
---@field remove_faces? boolean
---@field randomize_rank_suit? boolean
---@field ante_scaling? number
---@field hand_add? number
---@field remaining? string
---@field hidden? boolean
---@field e_key? BALATRO.Center.Enhancement
---@field enhancement? string
---@field count? number
---@field tally? string
---@field polychrome? boolean
---@field reroll_discount? number
---@field edition? string
---@field edition_count? string


---@class BALATRO.Prototype.Empty.Joker : BALATRO.Prototype.Empty.Base
---@field set BALATRO.Center.Set.Joker


---@class BALATRO.Prototype.Empty.Tarot : BALATRO.Prototype.Empty.Base
---@field set BALATRO.Center.Set.Tarot


---@class BALATRO.Prototype.Empty.Planet : BALATRO.Prototype.Empty.Base
---@field set BALATRO.Center.Set.Planet


---@class BALATRO.Prototype.Empty.Spectral : BALATRO.Prototype.Empty.Base
---@field set BALATRO.Center.Set.Spectral


---@class BALATRO.Prototype.Empty.Voucher : BALATRO.Prototype.Empty.Base
---@field set BALATRO.Center.Set.Voucher


---@class BALATRO.Prototype.Empty.Booster : BALATRO.Prototype.Empty.Base
---@field set BALATRO.Center.Set.Booster


---@class BALATRO.Prototype.Joker.Base
---@field set BALATRO.Center.Set.Joker
---@field start_alerted? boolean
---@field blueprint_compat? boolean
---@field perishable_compat? boolean
---@field eternal_compat? boolean
---@field rarity number
---@field effect? string
---@field config? BALATRO.Center.Config
---@field unlock_condition? BALATRO.Center.UnlockCondition
---@field no_pool_flag? string
---@field enhancement_gate? BALATRO.Center.Enhancement
---@field yes_pool_flag? string


---@class BALATRO.Prototype.Tarot.Base
---@field set BALATRO.Center.Set.Tarot
---@field consumeable boolean


---@class BALATRO.Prototype.Planet.Base
---@field set BALATRO.Center.Set.Planet
---@field consumeable boolean
---@field freq number


---@class BALATRO.Center.Config.Spectral : BALATRO.Center.Config
---@field extra string | BALATRO.Center.Config.Extra


---@class BALATRO.Prototype.Spectral.Base
---@field set BALATRO.Center.Set.Spectral
---@field config BALATRO.Center.Config.Spectral
---@field hidden boolean


---@class BALATRO.Prototype.Voucher.Base
---@field set BALATRO.Center.Set.Voucher
---@field available boolean
---@field requires? string[]
---@field unlock_condition? BALATRO.Center.UnlockCondition


---@class BALATRO.Prototype.Back.Base
---@field set BALATRO.Center.Set.Back
---@field unlock_condition? BALATRO.Center.UnlockCondition
---@field stake number
---@field omit? boolean


---@class BALATRO.Prototype.Enhanced.Base
---@field set BALATRO.Center.Set.Enhanced
---@field label string
---@field max number


---@class BALATRO.Prototype.Edition.Base
---@field set BALATRO.Center.Set.Edition
---@field atlas string


---@alias BALATRO.Prototype.Booster.Kind string
---| "Arcana"
---| "Celestial"
---| "Spectral"
---| "Standard"
---| "Buffoon"


---@class BALATRO.Prototype.Booster.Base
---@field set BALATRO.Center.Set.Booster
---@field weight number
---@field kind BALATRO.Prototype.Booster.Kind
---@field atlas string


---@class BALATRO.Prototype.Other.Base
---@field pos BALATRO.Node.Point
---@field skip_pool? boolean


---@class BALATRO.Prototype.JOKERS
---@field j_joker BALATRO.Prototype.Joker
---@field j_greedy_joker BALATRO.Prototype.Joker
---@field j_lusty_joker BALATRO.Prototype.Joker
---@field j_wrathful_joker BALATRO.Prototype.Joker
---@field j_gluttenous_joker BALATRO.Prototype.Joker
---@field j_jolly BALATRO.Prototype.Joker
---@field j_zany BALATRO.Prototype.Joker
---@field j_mad BALATRO.Prototype.Joker
---@field j_crazy BALATRO.Prototype.Joker
---@field j_droll BALATRO.Prototype.Joker
---@field j_sly BALATRO.Prototype.Joker
---@field j_wily BALATRO.Prototype.Joker
---@field j_clever BALATRO.Prototype.Joker
---@field j_devious BALATRO.Prototype.Joker
---@field j_crafty BALATRO.Prototype.Joker
---@field j_half BALATRO.Prototype.Joker
---@field j_stencil BALATRO.Prototype.Joker
---@field j_four_fingers BALATRO.Prototype.Joker
---@field j_mime BALATRO.Prototype.Joker
---@field j_credit_card BALATRO.Prototype.Joker
---@field j_ceremonial BALATRO.Prototype.Joker
---@field j_banner BALATRO.Prototype.Joker
---@field j_mystic_summit BALATRO.Prototype.Joker
---@field j_marble BALATRO.Prototype.Joker
---@field j_loyalty_card BALATRO.Prototype.Joker
---@field j_8_ball BALATRO.Prototype.Joker
---@field j_misprint BALATRO.Prototype.Joker
---@field j_dusk BALATRO.Prototype.Joker
---@field j_raised_fist BALATRO.Prototype.Joker
---@field j_chaos BALATRO.Prototype.Joker
---@field j_fibonacci BALATRO.Prototype.Joker
---@field j_steel_joker BALATRO.Prototype.Joker
---@field j_scary_face BALATRO.Prototype.Joker
---@field j_abstract BALATRO.Prototype.Joker
---@field j_delayed_grat BALATRO.Prototype.Joker
---@field j_hack BALATRO.Prototype.Joker
---@field j_pareidolia BALATRO.Prototype.Joker
---@field j_gros_michel BALATRO.Prototype.Joker
---@field j_even_steven BALATRO.Prototype.Joker
---@field j_odd_todd BALATRO.Prototype.Joker
---@field j_scholar BALATRO.Prototype.Joker
---@field j_business BALATRO.Prototype.Joker
---@field j_supernova BALATRO.Prototype.Joker
---@field j_ride_the_bus BALATRO.Prototype.Joker
---@field j_space BALATRO.Prototype.Joker
---@field j_egg BALATRO.Prototype.Joker
---@field j_burglar BALATRO.Prototype.Joker
---@field j_blackboard BALATRO.Prototype.Joker
---@field j_runner BALATRO.Prototype.Joker
---@field j_ice_cream BALATRO.Prototype.Joker
---@field j_dna BALATRO.Prototype.Joker
---@field j_splash BALATRO.Prototype.Joker
---@field j_blue_joker BALATRO.Prototype.Joker
---@field j_sixth_sense BALATRO.Prototype.Joker
---@field j_constellation BALATRO.Prototype.Joker
---@field j_hiker BALATRO.Prototype.Joker
---@field j_faceless BALATRO.Prototype.Joker
---@field j_green_joker BALATRO.Prototype.Joker
---@field j_superposition BALATRO.Prototype.Joker
---@field j_todo_list BALATRO.Prototype.Joker
---@field j_cavendish BALATRO.Prototype.Joker
---@field j_card_sharp BALATRO.Prototype.Joker
---@field j_red_card BALATRO.Prototype.Joker
---@field j_madness BALATRO.Prototype.Joker
---@field j_square BALATRO.Prototype.Joker
---@field j_seance BALATRO.Prototype.Joker
---@field j_riff_raff BALATRO.Prototype.Joker
---@field j_vampire BALATRO.Prototype.Joker
---@field j_shortcut BALATRO.Prototype.Joker
---@field j_hologram BALATRO.Prototype.Joker
---@field j_vagabond BALATRO.Prototype.Joker
---@field j_baron BALATRO.Prototype.Joker
---@field j_cloud_9 BALATRO.Prototype.Joker
---@field j_rocket BALATRO.Prototype.Joker
---@field j_obelisk BALATRO.Prototype.Joker
---@field j_midas_mask BALATRO.Prototype.Joker
---@field j_luchador BALATRO.Prototype.Joker
---@field j_photograph BALATRO.Prototype.Joker
---@field j_gift BALATRO.Prototype.Joker
---@field j_turtle_bean BALATRO.Prototype.Joker
---@field j_erosion BALATRO.Prototype.Joker
---@field j_reserved_parking BALATRO.Prototype.Joker
---@field j_mail BALATRO.Prototype.Joker
---@field j_to_the_moon BALATRO.Prototype.Joker
---@field j_hallucination BALATRO.Prototype.Joker
---@field j_fortune_teller BALATRO.Prototype.Joker
---@field j_juggler BALATRO.Prototype.Joker
---@field j_drunkard BALATRO.Prototype.Joker
---@field j_stone BALATRO.Prototype.Joker
---@field j_golden BALATRO.Prototype.Joker
---@field j_lucky_cat BALATRO.Prototype.Joker
---@field j_baseball BALATRO.Prototype.Joker
---@field j_bull BALATRO.Prototype.Joker
---@field j_diet_cola BALATRO.Prototype.Joker
---@field j_trading BALATRO.Prototype.Joker
---@field j_flash BALATRO.Prototype.Joker
---@field j_popcorn BALATRO.Prototype.Joker
---@field j_trousers BALATRO.Prototype.Joker
---@field j_ancient BALATRO.Prototype.Joker
---@field j_ramen BALATRO.Prototype.Joker
---@field j_walkie_talkie BALATRO.Prototype.Joker
---@field j_selzer BALATRO.Prototype.Joker
---@field j_castle BALATRO.Prototype.Joker
---@field j_smiley BALATRO.Prototype.Joker
---@field j_campfire BALATRO.Prototype.Joker
---@field j_ticket BALATRO.Prototype.Joker
---@field j_mr_bones BALATRO.Prototype.Joker
---@field j_acrobat BALATRO.Prototype.Joker
---@field j_sock_and_buskin BALATRO.Prototype.Joker
---@field j_swashbuckler BALATRO.Prototype.Joker
---@field j_troubadour BALATRO.Prototype.Joker
---@field j_certificate BALATRO.Prototype.Joker
---@field j_smeared BALATRO.Prototype.Joker
---@field j_throwback BALATRO.Prototype.Joker
---@field j_hanging_chad BALATRO.Prototype.Joker
---@field j_rough_gem BALATRO.Prototype.Joker
---@field j_bloodstone BALATRO.Prototype.Joker
---@field j_arrowhead BALATRO.Prototype.Joker
---@field j_onyx_agate BALATRO.Prototype.Joker
---@field j_glass BALATRO.Prototype.Joker
---@field j_ring_master BALATRO.Prototype.Joker
---@field j_flower_pot BALATRO.Prototype.Joker
---@field j_blueprint BALATRO.Prototype.Joker
---@field j_wee BALATRO.Prototype.Joker
---@field j_merry_andy BALATRO.Prototype.Joker
---@field j_oops BALATRO.Prototype.Joker
---@field j_idol BALATRO.Prototype.Joker
---@field j_seeing_double BALATRO.Prototype.Joker
---@field j_matador BALATRO.Prototype.Joker
---@field j_hit_the_road BALATRO.Prototype.Joker
---@field j_duo BALATRO.Prototype.Joker
---@field j_trio BALATRO.Prototype.Joker
---@field j_family BALATRO.Prototype.Joker
---@field j_order BALATRO.Prototype.Joker
---@field j_tribe BALATRO.Prototype.Joker
---@field j_stuntman BALATRO.Prototype.Joker
---@field j_invisible BALATRO.Prototype.Joker
---@field j_brainstorm BALATRO.Prototype.Joker
---@field j_satellite BALATRO.Prototype.Joker
---@field j_shoot_the_moon BALATRO.Prototype.Joker
---@field j_drivers_license BALATRO.Prototype.Joker
---@field j_cartomancer BALATRO.Prototype.Joker
---@field j_astronomer BALATRO.Prototype.Joker
---@field j_burnt BALATRO.Prototype.Joker
---@field j_bootstraps BALATRO.Prototype.Joker
---@field j_caino BALATRO.Prototype.Joker
---@field j_triboulet BALATRO.Prototype.Joker
---@field j_yorick BALATRO.Prototype.Joker
---@field j_chicot BALATRO.Prototype.Joker
---@field j_perkeo BALATRO.Prototype.Joker


---@class BALATRO.Prototype.TAROTS
---@field c_fool BALATRO.Prototype.Tarot
---@field c_magician BALATRO.Prototype.Tarot
---@field c_high_priestess BALATRO.Prototype.Tarot
---@field c_empress BALATRO.Prototype.Tarot
---@field c_emperor BALATRO.Prototype.Tarot
---@field c_heirophant BALATRO.Prototype.Tarot
---@field c_lovers BALATRO.Prototype.Tarot
---@field c_chariot BALATRO.Prototype.Tarot
---@field c_justice BALATRO.Prototype.Tarot
---@field c_hermit BALATRO.Prototype.Tarot
---@field c_wheel_of_fortune BALATRO.Prototype.Tarot
---@field c_strength BALATRO.Prototype.Tarot
---@field c_hanged_man BALATRO.Prototype.Tarot
---@field c_death BALATRO.Prototype.Tarot
---@field c_temperance BALATRO.Prototype.Tarot
---@field c_devil BALATRO.Prototype.Tarot
---@field c_tower BALATRO.Prototype.Tarot
---@field c_star BALATRO.Prototype.Tarot
---@field c_moon BALATRO.Prototype.Tarot
---@field c_sun BALATRO.Prototype.Tarot
---@field c_judgement BALATRO.Prototype.Tarot
---@field c_world BALATRO.Prototype.Tarot


---@class BALATRO.Prototype.PLANETS
---@field c_mercury BALATRO.Prototype.Planet
---@field c_venus BALATRO.Prototype.Planet
---@field c_earth BALATRO.Prototype.Planet
---@field c_mars BALATRO.Prototype.Planet
---@field c_jupiter BALATRO.Prototype.Planet
---@field c_saturn BALATRO.Prototype.Planet
---@field c_uranus BALATRO.Prototype.Planet
---@field c_neptune BALATRO.Prototype.Planet
---@field c_pluto BALATRO.Prototype.Planet
---@field c_planet_x BALATRO.Prototype.Planet
---@field c_ceres BALATRO.Prototype.Planet
---@field c_eris BALATRO.Prototype.Planet


---@class BALATRO.Prototype.SPECTRALS
---@field c_familiar BALATRO.Prototype.Spectral
---@field c_grim BALATRO.Prototype.Spectral
---@field c_incantation BALATRO.Prototype.Spectral
---@field c_talisman BALATRO.Prototype.Spectral
---@field c_aura BALATRO.Prototype.Spectral
---@field c_wraith BALATRO.Prototype.Spectral
---@field c_sigil BALATRO.Prototype.Spectral
---@field c_ouija BALATRO.Prototype.Spectral
---@field c_ectoplasm BALATRO.Prototype.Spectral
---@field c_immolate BALATRO.Prototype.Spectral
---@field c_ankh BALATRO.Prototype.Spectral
---@field c_deja_vu BALATRO.Prototype.Spectral
---@field c_hex BALATRO.Prototype.Spectral
---@field c_trance BALATRO.Prototype.Spectral
---@field c_medium BALATRO.Prototype.Spectral
---@field c_cryptid BALATRO.Prototype.Spectral
---@field c_soul BALATRO.Prototype.Spectral
---@field c_black_hole BALATRO.Prototype.Spectral


---@class BALATRO.Prototype.VOUCHERS
---@field v_overstock_norm BALATRO.Prototype.Voucher
---@field v_clearance_sale BALATRO.Prototype.Voucher
---@field v_hone BALATRO.Prototype.Voucher
---@field v_reroll_surplus BALATRO.Prototype.Voucher
---@field v_crystal_ball BALATRO.Prototype.Voucher
---@field v_telescope BALATRO.Prototype.Voucher
---@field v_grabber BALATRO.Prototype.Voucher
---@field v_wasteful BALATRO.Prototype.Voucher
---@field v_tarot_merchant BALATRO.Prototype.Voucher
---@field v_planet_merchant BALATRO.Prototype.Voucher
---@field v_seed_money BALATRO.Prototype.Voucher
---@field v_blank BALATRO.Prototype.Voucher
---@field v_magic_trick BALATRO.Prototype.Voucher
---@field v_hieroglyph BALATRO.Prototype.Voucher
---@field v_directors_cut BALATRO.Prototype.Voucher
---@field v_paint_brush BALATRO.Prototype.Voucher
---@field v_overstock_plus BALATRO.Prototype.Voucher
---@field v_liquidation BALATRO.Prototype.Voucher
---@field v_glow_up BALATRO.Prototype.Voucher
---@field v_reroll_glut BALATRO.Prototype.Voucher
---@field v_omen_globe BALATRO.Prototype.Voucher
---@field v_observatory BALATRO.Prototype.Voucher
---@field v_nacho_tong BALATRO.Prototype.Voucher
---@field v_recyclomancy BALATRO.Prototype.Voucher
---@field v_tarot_tycoon BALATRO.Prototype.Voucher
---@field v_planet_tycoon BALATRO.Prototype.Voucher
---@field v_money_tree BALATRO.Prototype.Voucher
---@field v_antimatter BALATRO.Prototype.Voucher
---@field v_illusion BALATRO.Prototype.Voucher
---@field v_petroglyph BALATRO.Prototype.Voucher
---@field v_retcon BALATRO.Prototype.Voucher
---@field v_palette BALATRO.Prototype.Voucher


---@class BALATRO.Prototype.BACKS
---@field b_red BALATRO.Prototype.Back
---@field b_blue BALATRO.Prototype.Back
---@field b_yellow BALATRO.Prototype.Back
---@field b_green BALATRO.Prototype.Back
---@field b_black BALATRO.Prototype.Back
---@field b_magic BALATRO.Prototype.Back
---@field b_nebula BALATRO.Prototype.Back
---@field b_ghost BALATRO.Prototype.Back
---@field b_abandoned BALATRO.Prototype.Back
---@field b_checkered BALATRO.Prototype.Back
---@field b_zodiac BALATRO.Prototype.Back
---@field b_painted BALATRO.Prototype.Back
---@field b_anaglyph BALATRO.Prototype.Back
---@field b_plasma BALATRO.Prototype.Back
---@field b_erratic BALATRO.Prototype.Back
---@field b_challenge BALATRO.Prototype.Back


---@class BALATRO.Prototype.ENHANCED
---@field m_bonus BALATRO.Prototype.Enhanced
---@field m_mult BALATRO.Prototype.Enhanced
---@field m_wild BALATRO.Prototype.Enhanced
---@field m_glass BALATRO.Prototype.Enhanced
---@field m_steel BALATRO.Prototype.Enhanced
---@field m_stone BALATRO.Prototype.Enhanced
---@field m_gold BALATRO.Prototype.Enhanced
---@field m_lucky BALATRO.Prototype.Enhanced


---@class BALATRO.Prototype.EDITIONS
---@field e_base BALATRO.Prototype.Edition
---@field e_foil BALATRO.Prototype.Edition
---@field e_holo BALATRO.Prototype.Edition
---@field e_polychrome BALATRO.Prototype.Edition
---@field e_negative BALATRO.Prototype.Edition


---@class BALATRO.Prototype.BOOSTERS
---@field p_arcana_normal_1 BALATRO.Prototype.Booster
---@field p_arcana_normal_2 BALATRO.Prototype.Booster
---@field p_arcana_normal_3 BALATRO.Prototype.Booster
---@field p_arcana_normal_4 BALATRO.Prototype.Booster
---@field p_arcana_jumbo_1 BALATRO.Prototype.Booster
---@field p_arcana_jumbo_2 BALATRO.Prototype.Booster
---@field p_arcana_mega_1 BALATRO.Prototype.Booster
---@field p_arcana_mega_2 BALATRO.Prototype.Booster
---@field p_celestial_normal_1 BALATRO.Prototype.Booster
---@field p_celestial_normal_2 BALATRO.Prototype.Booster
---@field p_celestial_normal_3 BALATRO.Prototype.Booster
---@field p_celestial_normal_4 BALATRO.Prototype.Booster
---@field p_celestial_jumbo_1 BALATRO.Prototype.Booster
---@field p_celestial_jumbo_2 BALATRO.Prototype.Booster
---@field p_celestial_mega_1 BALATRO.Prototype.Booster
---@field p_celestial_mega_2 BALATRO.Prototype.Booster
---@field p_spectral_normal_1 BALATRO.Prototype.Booster
---@field p_spectral_normal_2 BALATRO.Prototype.Booster
---@field p_spectral_jumbo_1 BALATRO.Prototype.Booster
---@field p_spectral_mega_1 BALATRO.Prototype.Booster
---@field p_standard_normal_1 BALATRO.Prototype.Booster
---@field p_standard_normal_2 BALATRO.Prototype.Booster
---@field p_standard_normal_3 BALATRO.Prototype.Booster
---@field p_standard_normal_4 BALATRO.Prototype.Booster
---@field p_standard_jumbo_1 BALATRO.Prototype.Booster
---@field p_standard_jumbo_2 BALATRO.Prototype.Booster
---@field p_standard_mega_1 BALATRO.Prototype.Booster
---@field p_standard_mega_2 BALATRO.Prototype.Booster
---@field p_buffoon_normal_1 BALATRO.Prototype.Booster
---@field p_buffoon_normal_2 BALATRO.Prototype.Booster
---@field p_buffoon_jumbo_1 BALATRO.Prototype.Booster
---@field p_buffoon_mega_1 BALATRO.Prototype.Booster


---@class BALATRO.Prototype.EXTRAS
---@field c_base BALATRO.Prototype.Default
---@field soul BALATRO.Prototype.Other
---@field undiscovered_joker BALATRO.Prototype.Other
---@field undiscovered_tarot BALATRO.Prototype.Other


---@class BALATRO.Prototype.CENTER_POOLS
---@field Booster BALATRO.Prototype.Booster[]
---@field Default BALATRO.Prototype.Default[]
---@field Enhanced BALATRO.Prototype.Enhanced[]
---@field Edition BALATRO.Prototype.Edition[]
---@field Joker BALATRO.Prototype.Joker[]
---@field Tarot BALATRO.Prototype.Tarot[]
---@field Planet BALATRO.Prototype.Planet[]
---@field Tarot_Planet BALATRO.Center[]
---@field Spectral BALATRO.Prototype.Spectral[]
---@field Consumeables BALATRO.Center[]
---@field Voucher BALATRO.Prototype.Voucher[]
---@field Back BALATRO.Prototype.Back[]
---@field Tag BALATRO.Prototype.Tag[]
---@field Seal BALATRO.Prototype.Seal[]
---@field Stake BALATRO.Prototype.Stake[]
---@field Demo BALATRO.Center[]
