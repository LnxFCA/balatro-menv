---@meta


---@alias SMODS.Language.OwnershipType SMODS.Language.Base | SMODS.GameObject.Empty


---@class SMODS.Language : SMODS.Language.Class
---@field obj_table SMODS.Language[]
---@field set "Language"
---@field required_params string[]
---@field prefix_config SMODS.GameObject.PrefixConfig
local Language = {}


---@class SMODS.Language.Common
---@field loc_key string
---@field font number | BALATRO.Font


---@class SMODS.Language.Base : SMODS.GameObject.Base, SMODS.GameObject.Common, SMODS.Language.Common


---@class SMODS.Language.Class : SMODS.GameObject.Super, SMODS.GameObject.Base
---@field __index SMODS.Language
---@field take_ownership fun(self: SMODS.Language, key: string, obj: SMODS.Language.OwnershipType, silent?: boolean): SMODS.Language


---@class SMODS.Language.Arguments : SMODS.GameObject.Common
---@field key string
---@field label string
---@field loc_key? string
---@field font? number | BALATRO.Font


--- `SMODS.Language()` - Craetes a new [SMODS.Language](lua://SMODS.SMODS.Language) object
---@param args SMODS.Language.Arguments
---@return SMODS.Language
_G.SMODS.Language = function(args) end
_G.SMODS.Language = Language


---@class SMODS.LocPre : SMODS.LocPre.Class
---@field obj_table SMODS.LocPre[]
---@field set "[INTERNAL]"
local LocPre = {}


---@class SMODS.LocPre.Class : SMODS.GameObject.Super
---@field pre_inject_class fun(self?: SMODS.LocPre)


-- Internal usage only, don't call.
_G.SMODS._Loc_Pre = function() end
_G.SMODS._Loc_Pre = LocPre


---@class SMODS.LocPost : SMODS.LocPost.Class
---@field obj_table SMODS.LocPost[]
---@field set "[INTERNAL]"
---@field silent boolean
local LocPost = {}


---@class SMODS.LocPost.Class : SMODS.GameObject.Super
---@field pre_inject_class fun(self?: SMODS.LocPost)


-- Internal usage only, don't call.
_G.SMODS._Loc_Post = function() end
_G.SMODS._Loc_Post = LocPost
