---@meta


---@alias BALATRO.GameObject.Round BALATRO.GameObject.Round.Prev | BALATRO.GameObject.Round.Base | BALATRO.GameObject.Round.Extra
---@alias BALATRO.GameObject.UsedList table<string, boolean?>
---@alias BALATRO.GameObject BALATRO.GameObject.Base | BALATRO.GameObject.Extra
---@alias BALATRO.GameObject.Round.Resets BALATRO.GameObject.Round.Resets.Base | BALATRO.GameObject.Round.Resets.Extra


---@class BALATRO.GameObject.Round.Scores
---@field furthest_ante BALATRO.Profile.ScoresItem
---@field furthest_round BALATRO.Profile.ScoresItem
---@field hand BALATRO.Profile.ScoresItem
---@field poker_hand BALATRO.Profile.ScoresItem
---@field new_collection BALATRO.Profile.ScoresItem
---@field cards_played BALATRO.Profile.ScoresItem
---@field cards_discarded BALATRO.Profile.ScoresItem
---@field times_rerolled BALATRO.Profile.ScoresItem
---@field cards_purchased BALATRO.Profile.ScoresItem


---@class BALATRO.GameObject.Modifiers.Blind
---@field Small? boolean
---@field Big? boolean
---@field Boss? boolean


---@class BALATRO.GameObject.Modifiers
---@field no_blind_reward? BALATRO.GameObject.Modifiers.Blind
---@field scaling? number
---@field enable_eternals_in_shop? boolean
---@field enable_perishables_in_shop? boolean
---@field enable_rentals_in_shop? boolean
---@field booster_ante_scaling? boolean
---@field inflation? number
---@field minus_hand_size_per_X_dollar? number
---@field flipped_cards? number
---@field no_interest? boolean
---@field money_per_hand? number
---@field money_per_discard? number


---@class BALATRO.GameObject.StartParams
---@field discards number
---@field hands number
---@field reroll_cost number
---@field dollars number
---@field consumable_slots? number
---@field joker_slots? number
---@field hand_size? number
---@field erratic_suits_and_ranks? boolean
---@field no_faces? boolean
---@field extra_cards? table[]
---@field ante_scaling? number


---@class BALATRO.GameObject.Probabilities
---@field normal number


---@class BALATRO.GameObject.Pseudorandom
---@field seed? number | string
---@field hashed_seed? number


---@class BALATRO.GameObject.Round.Idol
---@field rank string
---@field suit BALATRO.Center.SuitType


---@class BALATRO.GameObject.Round.Mail
---@field rank string
---@field id? string


---@class BALATRO.GameObject.Round.SuitCard
---@field suit BALATRO.Center.SuitType


---@class BALATRO.GameObject.Round.Prev
---@field dollars number


---@class BALATRO.GameObject.Round.Base
---@field current_hand BALATRO.Hand.Round
---@field used_packs table<number, string>
---@field cards_flipped number
---@field round_text string
---@field idol_card BALATRO.GameObject.Round.Idol
---@field mail_card BALATRO.GameObject.Round.Mail
---@field ancient_card BALATRO.GameObject.Round.SuitCard
---@field castle_card BALATRO.GameObject.Round.SuitCard
---@field hands_left number
---@field hands_played number
---@field discards_left number
---@field discards_used number
---@field dollars number
---@field reroll_cost number
---@field reroll_cost_increase number
---@field jokers_purchased number
---@field free_rerolls number
---@field round_dollars number
---@field dollars_to_be_earned string
---@field most_played_poker_hand BALATRO.Hand.Type


---@class BALATRO.GameObject.Round.Extra
---@field voucher? string


---@class BALATRO.GameObject.BlindTags
---@field Small? string
---@field Big? string


---@class BALATRO.GameObject.Round.Resets.Base
---@field hands number
---@field discards number
---@field reroll_cost number
---@field temp_reroll_cost? number
---@field temp_handsize? number
---@field ante number
---@field blind_ante number
---@field blind_states BALATRO.Blind.States
---@field loc_blind_states BALATRO.Blind.States
---@field blind_choices BALATRO.Blind.Choices
---@field boss_rerolled boolean


---@class BALATRO.GameObject.Round.Resets.Extra
---@field blind_tags? BALATRO.GameObject.BlindTags
---@field blind BALATRO.Prototype.Blind


---@class BALATRO.GameObject.Round.Bonus
---@field next_hands number
---@field discards number


---@class BALATRO.GameObject.Shop
---@field joker_max number


---@class BALATRO.GameObject.PlayedCard
---@field suits table<BALATRO.Center.SuitType, boolean>
---@field total number


---@class BALATRO.GameObject.Usage
---@field count number
---@field set BALATRO.Card.Ability.Set
---@field order? number


---@class BALATRO.GameObject.Base
---@field won boolean
---@field round_scores BALATRO.GameObject.Round.Scores
---@field joker_usage table<string, BALATRO.GameObject.Usage>
---@field consumeable_usage table<string, BALATRO.GameObject.Usage>
---@field hand_usage BALATRO.Profile.Usage.Hand
---@field last_tarot_planet? string
---@field win_ante number
---@field stake number
---@field modifiers BALATRO.GameObject.Modifiers
---@field starting_params BALATRO.GameObject.StartParams
---@field banned_keys BALATRO.GameObject.UsedList
---@field round number
---@field probabilities BALATRO.GameObject.Probabilities
---@field bosses_used table<string, number>
---@field pseudorandom BALATRO.GameObject.Pseudorandom
---@field starting_deck_size number
---@field ecto_minus number
---@field pack_size number
---@field skips number
---@field STOP_USE number
---@field edition_rate number
---@field joker_rate number
---@field tarot_rate number
---@field planet_rate number
---@field spectral_rate number
---@field playing_card_rate number
---@field consumeable_buffer number
---@field joker_buffer number
---@field discount_percent number
---@field interest_cap number
---@field interest_amount number
---@field inflation number
---@field hands_played number
---@field unused_discards number
---@field perishable_rounds number
---@field rental_rate number
---@field blind? BALATRO.Blind
---@field chips number
---@field chips_text string
---@field voucher_text string
---@field dollars number
---@field max_jokers number
---@field bankrupt_at number
---@field current_boss_streak number
---@field base_reroll_cost number
---@field blind_on_deck? BALATRO.Blind.Type
---@field sort BALATRO.CardArea.Sort
---@field previous_round BALATRO.GameObject.Round
---@field tags BALATRO.Tag[]
---@field tag_tally number
---@field pool_flags BALATRO.GameObject.UsedList
---@field used_jokers BALATRO.GameObject.UsedList
---@field used_vouchers BALATRO.GameObject.UsedList
---@field current_round BALATRO.GameObject.Round
---@field round_resets BALATRO.GameObject.Round.Resets
---@field round_bonus BALATRO.GameObject.Round.Bonus
---@field shop BALATRO.GameObject.Shop
---@field cards_played table<string, BALATRO.GameObject.PlayedCard>
---@field hands table<BALATRO.Hand.Type, BALATRO.PokerHand>


---@class BALATRO.GameObject.Extra
---@field viewed_back? BALATRO.Back
---@field selected_back BALATRO.Back
---@field selected_back_key? string | BALATRO.Prototype.Back
---@field challenge string
---@field challenge_tab BALATRO.Challenge
---@field starting_voucher_count number
---@field seeded boolean
---@field facing_blind? boolean
---@field shop_free? boolean
---@field shop_d6ed? boolean
---@field last_blind? BALATRO.Prototype.Blind
---@field dollar_buffer number
---@field pack_choices number
