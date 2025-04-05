---@meta


---@alias BALATRO.Profile.Usage table<string, BALATRO.Profile.Usage.Item>
---@alias BALATRO.Profile.Usage.Joker table<string, BALATRO.Profile.Usage.Joker.Item>
---@alias BALATRO.Profile BALATRO.Profile.Base | BALATRO.Profile.Extra


---@class BALATRO.Profile.ScoresItem
---@field label string
---@field amt number
---@field tot? number


---@class BALATRO.Profile.HighScores
---@field collection BALATRO.Profile.ScoresItem
---@field current_streak BALATRO.Profile.ScoresItem
---@field win_streakk BALATRO.Profile.ScoresItem
---@field furthest_round BALATRO.Profile.ScoresItem
---@field furthest_ante BALATRO.Profile.ScoresItem
---@field most_money BALATRO.Profile.ScoresItem
---@field boss_streak BALATRO.Profile.ScoresItem
---@field hand BALATRO.Profile.ScoresItem
---@field poker_hand BALATRO.Profile.ScoresItem


---@class BALATRO.Profile.Usage.Item
---@field order number
---@field count number


---@class BALATRO.Profile.Usage.Deck


---@class BALATRO.Profile.CareerStats
---@field c_hands_played number
---@field c_face_cards_played number
---@field c_playing_cards_bought number
---@field c_tarot_reading_used number
---@field c_jokers_sold number
---@field c_planetarium_used number
---@field c_cards_sold number
---@field c_shop_rerolls number
---@field c_cards_played number
---@field c_cards_discarded number
---@field c_round_interest_cap_streak number
---@field c_dollars_earned number
---@field c_vouchers_bought number
---@field c_wins number
---@field c_rounds number
---@field c_single_hand_round_streak number
---@field c_tarots_bought number
---@field c_shop_dollars_spent number
---@field c_losses number
---@field c_planets_bought number


---@class BALATRO.Profile.Progress.Item
---@field tally number
---@field of number


---@class BALATRO.Profile.Progress
---@field overall_of number
---@field deck_stakes BALATRO.Profile.Progress.Item
---@field challenges BALATRO.Profile.Progress.Item
---@field discovered BALATRO.Profile.Progress.Item
---@field joker_stickers BALATRO.Profile.Progress.Item
---@field overall_tally number


---@class BALATRO.Profile.MEMORY
---@field stake number
---@field deck string


---@class BALATRO.Profile.Usage.Hand.Item : BALATRO.Profile.Usage.Item
---@field order string


---@class BALATRO.Profile.Usage.Hand
---@field FullHouse BALATRO.Profile.Usage.Hand.Item
---@field Pair BALATRO.Profile.Usage.Hand.Item
---@field HighCard BALATRO.Profile.Usage.Hand.Item
---@field ThreeofaKind BALATRO.Profile.Usage.Hand.Item
---@field Flush BALATRO.Profile.Usage.Hand.Item
---@field TwoPair BALATRO.Profile.Usage.Hand.Item
---@field Straight BALATRO.Profile.Usage.Hand.Item
---@field StraightFlush BALATRO.Profile.Usage.Hand.Item
---@field FiveofaKind BALATRO.Profile.Usage.Hand.Item
---@field FlushFive BALATRO.Profile.Usage.Hand.Item
---@field FourofaKind BALATRO.Profile.Usage.Hand.Item
---@field FlushHouse BALATRO.Profile.Usage.Hand.Item


---@class BALATRO.Profile.Usage.Joker.Item : BALATRO.Profile.Usage.Item
---@field wins_by_key table<string, number>
---@field losses_by_key table<string, number>
---@field wins unknown
---@field losses unknown


---@class BALATRO.Profile.DeckStakes


---@class BALATRO.Profile.ChallengeProgress


---@class BALATRO.Profile.Base
---@field high_scores BALATRO.Profile.HighScores
---@field voucher_usage BALATRO.Profile.Usage
---@field deck_usage BALATRO.Profile.Usage.Deck
---@field stake number
---@field consumeable_usage BALATRO.Profile.Usage
---@field career_stats BALATRO.Profile.CareerStats
---@field deck_stakes BALATRO.Profile.DeckStakes
---@field progress BALATRO.Profile.Progress
---@field MEMORY BALATRO.Profile.MEMORY
---@field hand_usage BALATRO.Profile.Usage.Hand
---@field joker_usage BALATRO.Profile.Usage.Joker
---@field name string
---@field challenge_progress BALATRO.Profile.ChallengeProgress
---@field all_unlocked? boolean


---@class BALATRO.Profile.Extra
---@field challenges_unlocked? number
