---@meta


---@class BALATRO.TiltVar
---@field mx number
---@field my number
---@field dx number
---@field dy number
---@field amt 0

---@class BALATRO.Card.Params
---@field playing_card? number | boolean
---@field viewed_back? boolean
---@field bypass_discovery_center? boolean
---@field bypass_discovery_ui? boolean
---@field bypass_lock? boolean
---@field no_ui? boolean


---@class BALATRO.Card.Edition


---@class BALATRO.Card.Front
---@field name string
---@field suit string
---@field value string
---@field pos BALATRO.Node.Point
---@field atlas? string
---@field no_ui? boolean


---@class BALATRO.Card.Center
---@field set? string
---@field atlas? string
---@field alerted? boolean
---@field discovered? boolean
---@field order number


---@class (exact) BALATRO.Card.Config
---@field card? BALATRO.Card.Front
---@field center BALATRO.Card.Center
---@field card_key? string

---@class BALATRO.Card.Base
---@field id? number
---@field name? string
---@field suit? string
---@field value? string
---@field nominal number
---@field suit_nominal number
---@field face_nominal number
---@field colour? BALATRO.UI.Colour
---@field times_played number
---@field original_value? string
---@field suit_nominal_original? number


---@alias BALATRO.Card.Ability.Set string | "Joker" | "Booster" | "Tarot" | "Planet" | "Edition" | "Spectral" | "Voucher"

---@class BALATRO.Card.Ability
---@field set BALATRO.Card.Ability.Set


---@class BALATRO.Card : BALATRO.Card.Class, BALATRO.Card.Params
---@field params BALATRO.Card.Params
---@field config BALATRO.Card.Config
---@field tilt_var BALATRO.TiltVar
---@field ambient_tilt number
---@field sort_id number
---@field back string | "selected_back" | "viewed_back"
---@field children BALATRO.UI.Object[] | table<string, BALATRO.UI.Object>
---@field base_cost number
---@field extra_cost number
---@field cost number
---@field sell_cost number
---@field sell_cost_label number | string
---@field unique_val number
---@field edition? BALATRO.Card.Edition
---@field discard_pos { r: number, x: number, y: number }
---@field facing string | "front" | "back"
---@field sprite_facing string | "front" | "back"
---@field flipping? boolean
---@field area? BALATRO.CardArea
---@field highlighted boolean
---@field click_timeout number
---@field debuff boolean
---@field rank? number
---@field added_to_deck? boolean
---@field base BALATRO.Card.Base
---@field ability BALATRO.Card.Ability
local Card = {}


---@class BALATRO.Card.Class : BALATRO.Moveable.Super
---@field init fun(self, X, Y, W, H, card, center, params)
---@field update_alert fun(self: BALATRO.Card)
---@field set_base fun(self: BALATRO.Card, card?: BALATRO.Card.Front, initial?: boolean)
---@field set_sprites fun(self: BALATRO.Card, center?: BALATRO.Card.Center, front?: BALATRO.Card.Front)


---@alias BALATRO.Card.Callable BALATRO.Card | fun(X: number, Y: number, W: number, H: number, card: BALATRO.Card.Front, center: BALATRO.Card.Center, params?: BALATRO.Card.Params)


--- Creates a new game Card
---@param self BALATRO.Card
---@param X number
---@param Y number
---@param W number
---@param H number
---@param card BALATRO.Card.Front
---@param center BALATRO.Card.Center
---@param params BALATRO.Card.Params
function Card.init(self, X, Y, W, H, card, center, params) end
