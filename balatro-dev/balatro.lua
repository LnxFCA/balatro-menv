---@meta


--- Permanetly discover card
---@param card? BALATRO.Card.Center | BALATRO.Card
local function discover_card(card) end

--- Permanetly unlock card
---@param card? BALATRO.Card.Center | BALATRO.Card
local function unlock_card(card) end


--- Create a new Card object
---@param _type BALATRO.Card.Ability.Set Card set. See [Card.Ability.Set](lua://BALATRO.Card.Ability.Set)
---@param area? unknown [CardArea](lua://BALATRO.CardArea) where this card will be emplaced.
---@param legendary? boolean Use legendary pool
---@param _rarity? number Card rarity pool
---@param skip_materialize? boolean Skit card materialize animation
---@param soulable? boolean Soulable animation
---@param forced_key? string Generate specific card instead of a random one.
---@param key_append? string Append value to generated pools
---@return BALATRO.Card
_G.create_card = function(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append) end


--- Create a pseudo random seed
---@param key string | number | "seed"
---@param predict_seed? number | string
---@return number
_G.pseudoseed = function(key, predict_seed) end


--- Return a pseudo-random element
---@param seed string | number
---@param min? number
---@param max? number
---@return number
_G.pseudorandom = function(seed, min, max) end

_G.discover_card = discover_card
_G.unlock_card  = unlock_card
