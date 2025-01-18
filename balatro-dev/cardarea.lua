---@meta

---@class BALATRO_T.CardArea.Config
---@field card_w number Width of the card
---@field highlight_limit number Maximum number of highlighted cards
---@field card_limit number Maximum number of cards
---@field temp_limit number Temporary limit of cards
---@field card_count number Current count of cards
---@field type string Type of the card area (e.g., 'deck', 'discard')
---@field sort string Sorting order (e.g., 'asc', 'desc')
---@field lr_padding number Left-right padding

---@class BALATRO_T.CardArea : BALATRO_T.Moveable
---@field states table Table containing state information
---@field config BALATRO_T.CardArea.Config Configuration for the card area
---@field card_w number Width of the card
---@field cards table List of cards in the area
---@field children table List of child elements
---@field highlighted table List of highlighted cards
---@field shuffle_amt number Amount of shuffle
CardArea2 = {}

--- Initializes a new CardArea instance
---@param X number X coordinate
---@param Y number Y coordinate
---@param W number Width of the area
---@param H number Height of the area
---@param config BALATRO_T.CardArea.Config Configuration for the card area
function CardArea:init(X, Y, W, H, config) end

--- Emplaces a card in the card area
---@param card table The card to be emplaced
---@param location string Location to place the card ('front' or other)
---@param stay_flipped boolean Whether the card should stay flipped
function CardArea:emplace(card, location, stay_flipped) end

--- Removes a card from the card area
---@param card table The card to be removed
---@param discarded_only boolean Whether to remove only discarded cards
---@return table The removed card
function CardArea:remove_card(card, discarded_only) end

--- Changes the size of the card area
---@param delta number The change in size
function CardArea:change_size(delta) end

--- Checks if a card can be highlighted
---@param card table The card to check
---@return boolean Whether the card can be highlighted
function CardArea:can_highlight(card) end

--- Adds a card to the highlighted list
---@param card table The card to highlight
---@param silent boolean Whether to suppress sound
function CardArea:add_to_highlighted(card, silent) end

--- Parses the highlighted cards
function CardArea:parse_highlighted() end

--- Removes a card from the highlighted list
---@param card table The card to remove from highlighted
---@param force boolean Whether to force removal
function CardArea:remove_from_highlighted(card, force) end

--- Unhighlights all cards
function CardArea:unhighlight_all() end

--- Sets the ranks of the cards
function CardArea:set_ranks() end

--- Moves the card area
---@param dt number Delta time
function CardArea:move(dt) end

--- Updates the card area
---@param dt number Delta time
function CardArea:update(dt) end

--- Draws the card area
function CardArea:draw() end

--- Aligns the cards in the card area
function CardArea:align_cards() end

--- Hard sets the transformation of the card area
---@param X number X coordinate
---@param Y number Y coordinate
---@param W number Width of the area
---@param H number Height of the area
function CardArea:hard_set_T(X, Y, W, H) end

--- Hard sets the transformation of the cards
function CardArea:hard_set_cards() end

--- Shuffles the cards in the card area
---@param _seed string Seed for shuffling
function CardArea:shuffle(_seed) end

--- Sorts the cards in the card area
---@param method string Sorting method
function CardArea:sort(method) end

--- Draws a card from another card area
---@param area CardArea The card area to draw from
---@param stay_flipped boolean Whether the card should stay flipped
---@param discarded_only boolean Whether to draw only discarded cards
---@return boolean Whether the draw was successful
function CardArea:draw_card_from(area, stay_flipped, discarded_only) end

--- Handles click events on the card area
function CardArea:click() end

--- Saves the state of the card area
---@return table The saved state
function CardArea:save() end

--- Loads the state of the card area
---@param cardAreaTable table The saved state to load
function CardArea:load(cardAreaTable) end

--- Removes the card area
function CardArea:remove() end