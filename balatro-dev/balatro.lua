---@meta


--- Permanetly discover card
---@param card? BALATRO.Center | BALATRO.Card
_G.discover_card = function(card) end


--- Permanetly unlock card
---@param card? BALATRO.Center | BALATRO.Card
_G.unlock_card = function(card) end


--- Create a new Card object
---@param _type BALATRO.Card.Ability.Set Card set. See [Card.Ability.Set](lua://BALATRO.Card.Ability.Set)
---@param area? BALATRO.CardArea [CardArea](lua://BALATRO.CardArea) where this card will be emplaced.
---@param legendary? boolean Use legendary pool
---@param _rarity? number Card rarity pool
---@param skip_materialize? boolean Skit card materialize animation
---@param soulable? boolean Soulable animation
---@param forced_key? string | number Generate specific card instead of a random one.
---@param key_append? string Append value to generated pools
---@return BALATRO.Card
_G.create_card = function(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append) end


--- Create a pseudo random seed
---@param key string | number | "seed"
---@param predict_seed? number | string
---@return number
_G.pseudoseed = function(key, predict_seed) end


--- Return a pseudo-random number
---@param seed string | number
---@param min? number
---@param max? number
---@return number
_G.pseudorandom = function(seed, min, max) end


--- Prepare graphics for draw
---@overload fun(moveable: BALATRO.UIElement, scale: number, rotate?: number, offset?: BALATRO.Node.Point)
---@overload fun(moveable: BALATRO.DynaText, scale: number, rotate?: number, offset?: BALATRO.Node.Point)
---@overload fun(moveable: BALATRO.Particles, scale: number, rotate?: number, offset?: BALATRO.Node.Point)
---@param moveable BALATRO.Sprite
---@param scale number
---@param rotate? number
---@param offset? BALATRO.Node.Point
---@param _? boolean
_G.prep_draw = function(moveable, scale, rotate, offset, _) end


--- Return a color for a localized string.
--- Example:
--- ```lua
--- local mytext = {"Hello {C:green}wolrd{}"}
--- ```
--- returns the color `green`, if not matching color, it will return the default color.
---
---@overload fun(_c: string, _default?: BALATRO.UI.Colour): BALATRO.UI.Colour
---@overload fun(_c?: string, _default?: BALATRO.UI.Colour): BALATRO.UI.Colour
---@param _c string
---@param _default BALATRO.UI.Colour
---@return BALATRO.UI.Colour
_G.loc_colour = function(_c, _default) end


_G.G.ARGS = {}
_G.G.SETTINGS = {}
_G.G.GAME = {}
_G.G.GAME.modifiers = {}
_G.G.GAME.starting_params = {}
_G.G.GAME.current_round = {}
_G.G.CONTROLLER = {}
