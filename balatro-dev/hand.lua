---@meta

---@alias BALATRO.Hand.Type.Flush "Flush Five" | "Flush House" | "Straight Flush" | "Flush"
---@alias BALATRO.Hand.Type.NKind "Four of a Kind" | "Four of a Kind" | "Three of a Kind" | "High Card"
---@alias BALATRO.Hand.Type.Other "Full House" | "Straight" | "Two Pair" | "Pair"

---@alias BALATRO.Hand.Type string | BALATRO.Hand.Type.Flush | BALATRO.Hand.Type.NKind | BALATRO.Hand.Type.Other


---@alias BALATRO.Hand.Example [string, boolean]


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
