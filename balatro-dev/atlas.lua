---@meta


---@alias BALATRO.Atlas.Animation.Key string | "blind_chips" | "shop_sign"
---@alias BALATRO.Atlas.Image.Key string | "playstack_logo" | "localthunk_logo"
---@alias BALATRO.Atlas.Asset.Key string
---|"cards_1"
---|"cards_2"
---|"centers"
---|"Joker"
---|"Tarot"
---|"Voucher"
---|"Booster"
---|"ui_1"
---|"ui_2"
---|"balatro"
---|"gamepad_ui"
---|"icons"
---|"tags"
---|"stickers"
---|"chips"
---| BALATRO.Atlas.Image.Key

---@alias BALATRO.Atlas BALATRO.Atlas.Asset | BALATRO.Atlas.Animation | SMODS.Atlas
---@alias BALATRO.Game.Atlas.Animation table<BALATRO.Atlas.Animation.Key, BALATRO.Atlas.Animation | SMODS.Atlas>
---@alias BALATRO.Game.Atlas.Asset table<BALATRO.Atlas.Asset.Key, BALATRO.Atlas.Asset | SMODS.Atlas>


---@class BALATRO.Atlas.Base
---@field image love.Image
---@field px number
---@field py number


---@class BALATRO.Atlas.Animation : BALATRO.Atlas.Base
---@field name BALATRO.Atlas.Animation.Key
---@field frames number


---@class BALATRO.Atlas.Asset : BALATRO.Atlas.Base
---@field name BALATRO.Atlas.Asset.Key
---@field type string


---@class BALATRO.Atlas.Index.Base
---@field name string
---@field path string
---@field px number
---@field py number
---@field type? string


---@class BALATRO.Atlas.Index.Animation : BALATRO.Atlas.Index.Base
---@field frames number


---@class BALATRO.Atlas.Index.Asset : BALATRO.Atlas.Index.Base
---@field name BALATRO.Atlas.Asset.Key
