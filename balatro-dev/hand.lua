---@meta

---@alias BALATRO.Hand.Type.Flush "Flush Five" | "Flush House" | "Straight Flush" | "Flush"
---@alias BALATRO.Hand.Type.NKind "Four of a Kind" | "Four of a Kind" | "Three of a Kind" | "High Card"
---@alias BALATRO.Hand.Type.Other "Full House" | "Straight" | "Two Pair" | "Pair"
---@alias BALATRO.Hand.Type string | BALATRO.Hand.Type.Flush | BALATRO.Hand.Type.NKind | BALATRO.Hand.Type.Other
---@alias BALATRO.HandList table<number, BALATRO.Hand.Type>


---@alias BALATRO.Hand.Example [string, boolean]
---@alias BALATRO.Hand.Eval BALATRO.Card[][]


---@class BALATRO.PokerHand
---@field visible boolean
---@field order number
---@field mult number
---@field chips number
---@field s_mult number
---@field s_chips number
---@field level number
---@field l_mult number
---@field l_chips number
---@field played number
---@field played_this_round number
---@field example BALATRO.Hand.Example[]


---@class BALATRO.Hand.Round
---@field chips number
---@field chip_text string
---@field mult number
---@field mult_text string
---@field chip_total number
---@field chip_total_text string
---@field hand_name BALATRO.Hand.Type
---@field hand_level string
