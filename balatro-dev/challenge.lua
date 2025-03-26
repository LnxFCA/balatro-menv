---@meta

---@class BALATRO.Challenge.ItemBase
---@field id string


---@class BALATRO.Challenge.Card
---@field s string
---@field r string
---@field e string


---@class BALATRO.Challenge.Deck
---@field enhancement? string
---@field edition? BALATRO.Card.Edition.Type
---@field gold_seal? boolean
---@field yes_ranks? table<string, boolean>[]
---@field no_ranks? table<string, boolean>[]
---@field yes_suits? table<string, boolean>[]
---@field no_suits? table<string, boolean>[]
---@field cards? BALATRO.Challenge.Card[]
---@field type? string


---@class BALATRO.Challenge.Rule : BALATRO.Challenge.ItemBase
---@field value? unknown | number | string


---@class BALATRO.Challenge.Rules
---@field custom BALATRO.Challenge.Rule[]
---@field modifiers BALATRO.Challenge.Rule[]


---@class BALATRO.Challenge.Joker : BALATRO.Challenge.ItemBase
---@field id string
---@field edition? BALATRO.Card.Edition.Type
---@field eternal? boolean
---@field pinned? boolean


---@class BALATRO.Challenge.ItemBanned : BALATRO.Challenge.ItemBase
---@field type? string
---@field ids? string[]


---@class BALATRO.Challenge.Restrictions
---@field banned_cards BALATRO.Challenge.ItemBanned[]
---@field banned_tags BALATRO.Challenge.ItemBanned[]
---@field banned_other BALATRO.Challenge.ItemBanned[]


---@class BALATRO.Challenge
---@field name string
---@field id string
---@field rules BALATRO.Challenge.Rules
---@field jokers BALATRO.Challenge.Joker[]
---@field consumeables BALATRO.Challenge.ItemBase[]
---@field vouchers BALATRO.Challenge.ItemBase[]
---@field restrictions BALATRO.Challenge.Restrictions
