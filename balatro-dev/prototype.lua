---@meta


---@alias BALATRO.Prototype.Set.Seal string | "seal"
---@alias BALATRO.Prototype.Set.Tag string | "tag"
---@alias BALATRO.P_SEALS BALATRO.Prototype.SEALS | table<string, BALATRO.Prototype.Seal>


---@class BALATRO.Prototype.Common
---@field order number
---@field name string
---@field unlocked boolean
---@field discovered boolean
---@field pos BALATRO.Node.Point



---@class BALATRO.Prototype.Seal : BALATRO.Prototype.Common
---@field name? string
---@field pos? BALATRO.Node.Point
---@field unlocked? boolean
---@field set BALATRO.Prototype.Set.Seal


---@class BALATRO.Prototype.SEALS
---@field Gold BALATRO.Prototype.Seal
---@field Red BALATRO.Prototype.Seal
---@field Blue BALATRO.Prototype.Seal
---@field Purple BALATRO.Prototype.Seal


---@class BALATRO.Prototype.TAG : BALATRO.Prototype.Common
---@field unlocked? boolean
---@field set BALATRO.Prototype.Set.Tag
---@field min_ante number
---@field config BALATRO.Prototype


---@class BALATRO.Prototype.TAGS
