---@meta


---@alias SMODS.ObjectType.OwnershipType SMODS.ObjectType.Base | SMODS.GameObject.Empty
---@alias SMODS.ObjectType.All SMODS.ObjectType | SMODS.ConsumableType


---@class SMODS.ObjectType.Super : SMODS.ObjectType
---@field super SMODS.ObjectType


---@class SMODS.ObjectType : SMODS.ObjectType.Class
---@field obj_table SMODS.ObjectType[]
---@field set "ObjectType"
local ObjectType = {}


---@class SMODS.ObjectType.Common : SMODS.ObjectType.Arguments.Base
---@field rarities SMODS.Rarity.Pool[] | SMODS.Rarity.Pool.Extra[]
---@field rarity_pools table<number | string, BALATRO.Prototype.Center>


---@class SMODS.ObjectType.Base : SMODS.ObjectType.Common, SMODS.GameObject.Base, SMODS.GameObject.Common
---@field process_loc_text fun(self: SMODS.ObjectType.All)
---@field inject_card fun(self: SMODS.ObjectType.All, center: BALATRO.Center)
---@field delete_card fun(self: SMODS.ObjectType.All, center: BALATRO.Center)
---@field inject fun(self: SMODS.ObjectType.All)
local ObjectTypeBase = {}


---@class SMODS.ObjectType.Class : SMODS.GameObject.Super, SMODS.ObjectType.Base
---@field __index SMODS.ObjectType
---@field take_ownership fun(self: SMODS.ObjectType, key: string, obj: SMODS.ObjectType.OwnershipType, silent?: boolean): SMODS.ObjectType?
---@field pre_inject_class fun(self: SMODS.ObjectType)


---@class SMODS.ObjectType.Arguments.Base
---@field default? string
---@field cards? table<string, boolean>
---@field rarities? SMODS.Rarity.Pool[]


---@class SMODS.ObjectType.Arguments : SMODS.GameObject.Common, SMODS.ObjectType.Arguments.Base
---@field key string


--- `SMODS.ObjectType()` - Creates a new [SMODS.ObjectType](lua://SMODS.ObjectType) object
---@param args SMODS.ObjectType.Arguments
---@return SMODS.ObjectType
_G.SMODS.ObjectType = function(args) end
_G.SMODS.ObjectType = ObjectType



---@alias SMODS.ConsumableType.OwnershipType SMODS.ConsumableType.Base | SMODS.GameObject.Empty


---@class SMODS.ConsumableType : SMODS.ConsumableType.Class
---@field obj_table SMODS.ConsumableType[]
---@field set "ConsumableType"
---@field ctype_buffer string[]
local ConsumableType = {}


---@class SMODS.ConsumableType.Common : SMODS.ObjectType.Arguments.Base
---@field loc_txt table
---@field collection_rows number[]


---@class SMODS.ConsumableType.Base : SMODS.ObjectType.Base, SMODS.ConsumableType.Common
---@field create_UIBox_your_collection fun(self: SMODS.ConsumableType): BALATRO.UI.Node


---@class SMODS.ConsumableType.Class : SMODS.ObjectType.Super, SMODS.ConsumableType.Base
---@field __index SMODS.ConsumableType
---@field take_ownership fun(self: SMODS.ObjectType, key: string, obj: SMODS.ObjectType.OwnershipType, silent?: boolean): SMODS.ObjectType?


---@class SMODS.ConsumableType.Arguments.Base
---@field primary_colour BALATRO.UI.Colour
---@field secondary_colour BALATRO.UI.Colour
---@field loc_txt? string | table
---@field collection_rows? number[]
---@field shop_rate? number


---@class SMODS.ConsumableType.Arguments : SMODS.GameObject.Common, SMODS.ConsumableType.Arguments.Base
---@field key string


--- `SMODS.ConsumableType()` - Creates a new [SMODS.ConsumableType](lua://SMODS.ConsumableType) object
---@param args SMODS.ConsumableType.Arguments
---@return SMODS.ConsumableType
_G.SMODS.ConsumableType = function(args) end
_G.SMODS.ConsumableType = ConsumableType



---@alias SMODS.UndiscoveredSprite.OwnershipType SMODS.UndiscoveredSprite.Base | SMODS.GameObject.Empty


---@class SMODS.UndiscoveredSprite : SMODS.UndiscoveredSprite.Class
---@field obj_table SMODS.UndiscoveredSprite[]
---@field set "Undiscovered Sprite"
---@field count number
---@field order number
local UndiscoveredSprite = {}


---@class SMODS.UndiscoveredSprite.Common : SMODS.UndiscoveredSprite.Arguments.Base
---@field no_overlay boolean


---@class SMODS.UndiscoveredSprite.Base : SMODS.UndiscoveredSprite.Common, SMODS.GameObject.Base, SMODS.GameObject.Common
---@field process_loc_text fun(self: SMODS.UndiscoveredSprite)
---@field inject fun(self: SMODS.UndiscoveredSprite)
local UndiscoveredSpriteBase = {}


---@class SMODS.UndiscoveredSprite.Class : SMODS.GameObject.Super, SMODS.UndiscoveredSprite.Base
---@field __index SMODS.UndiscoveredSprite
---@field take_ownership fun(self: SMODS.UndiscoveredSprite, key: string, obj: SMODS.UndiscoveredSprite.OwnershipType, silent?: boolean): SMODS.UndiscoveredSprite?
---@field pre_inject_class fun(self: SMODS.UndiscoveredSprite)


---@class SMODS.UndiscoveredSprite.Arguments.Base
---@field atlas string
---@field no_overlay? boolean
---@field pos BALATRO.Node.Point
---@field overlay_pos? BALATRO.Node.Point


---@class SMODS.UndiscoveredSprite.Arguments : SMODS.GameObject.Common, SMODS.UndiscoveredSprite.Arguments.Base
---@field key string


--- `SMODS.UndiscoveredSprite()` - Creates a new [SMODS.UndiscoveredSprite](lua://SMODS.UndiscoveredSprite) object
---@param args SMODS.UndiscoveredSprite.Arguments
---@return SMODS.UndiscoveredSprite
_G.SMODS.UndiscoveredSprite = function(args) end
_G.SMODS.UndiscoveredSprite = UndiscoveredSprite
