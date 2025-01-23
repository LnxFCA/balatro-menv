---@meta

---@class BALATRO_T.Card.Config
---@field card table The card data
---@field center BALATRO_T.Card.Config.Center The center data
---@field card_key string The key for the card
---@field center_key string The key for the center
---@field h_popup table The hover popup configuration
---@field h_popup_config table The hover popup alignment configuration


---@class BALATRO_T.Card.Params
---@field playing_card boolean Whether the card is a playing card
---@field viewed_back boolean Whether the card is viewed from the back
---@field bypass_discovery_center boolean Whether to bypass discovery center
---@field bypass_discovery_ui boolean Whether to bypass discovery UI
---@field bypass_lock boolean Whether to bypass lock

---@class BALATRO_T.Card.Base
---@field name string Name of the card
---@field suit string Suit of the card
---@field value string Value of the card
---@field nominal number Nominal value of the card
---@field suit_nominal number Suit nominal value of the card
---@field face_nominal number Face nominal value of the card
---@field colour BALATRO_T.UIDef.Config.Colour Colour of the card
---@field times_played number Number of times the card has been played

---@class BALATRO_T.Card.Ability
---@field name string Name of the ability
---@field effect string Effect of the ability
---@field set string Set of the ability
---@field mult number Multiplier of the ability
---@field h_mult number Hand multiplier of the ability
---@field h_x_mult number Hand x multiplier of the ability
---@field h_dollars number Hand dollars of the ability
---@field p_dollars number P dollars of the ability
---@field t_mult number T multiplier of the ability
---@field t_chips number T chips of the ability
---@field x_mult number X multiplier of the ability
---@field h_size number Hand size of the ability
---@field d_size number D size of the ability
---@field extra table Extra properties of the ability
---@field extra_value number Extra value of the ability
---@field type string Type of the ability
---@field order number Order of the ability
---@field forced_selection boolean Whether the ability is forced selection
---@field perma_bonus number Permanent bonus of the ability
---@field bonus number Bonus of the ability
---@field consumeable table Consumeable properties of the ability
---@field invis_rounds number Invisible rounds of the ability
---@field to_do_poker_hand string To do poker hand of the ability
---@field caino_xmult number Caino x multiplier of the ability
---@field yorick_discards number Yorick discards of the ability
---@field loyalty_remaining number Loyalty remaining of the ability
---@field hands_played_at_create number Hands played at create of the ability
---@field rental boolean Whether the ability is rental
---@field perishable boolean Whether the ability is perishable
---@field perish_tally number Perish tally of the ability
---@field eternal boolean Whether the ability is eternal

---@class BALATRO_T.Card.Edition
---@field holo boolean? Whether the edition is holographic
---@field foil boolean? Whether the edition is foil
---@field polychrome boolean? Whether the edition is polychrome
---@field negative boolean? Whether the edition is negative
---@field mult number Multiplier of the edition
---@field chips number Chips of the edition
---@field x_mult number X multiplier of the edition
---@field type string The card edition type


---@class BALATRO_T.Card.Config.Center
---@field key string The unique identifier for the center
---@field calculate? function A function that calculates specific properties or effects for the card
---@field consumeable? boolean Indicates if the card is a consumable item
---@field no_suit? boolean Indicates if the card has no suit
---@field any_suit? boolean Indicates if the card can be any suit
---@field always_scores? boolean Indicates if the card always scores
---@field shatters? boolean Indicates if the card shatters
---@field get_weight function? A function that returns the weight of the card
---@field on_load? function A function that is called when the card is loaded
---@field extra? table Additional properties or enhancements for the card
---@field edition? string The edition of the card
---@field set string The set to which the card belongs
---@field card_key? string The key used for the card
---@field above_stake? boolean Indicates if the card is above stake
---@field stake_level? number The stake level of the card
---@field order number The order of the card in the pool
---@field pos table The position of the card
---@field discovered boolean Indicates if the card is discovered
---@field unlocked boolean Indicates if the card is unlocked
---@field alerted? boolean Indicates if the card is alerted
---@field wip? boolean Indicates if the card is a work in progress
---@field demo? boolean Indicates if the card is a demo
---@field primary_colour? string The primary color of the card
---@field secondary_colour? string The secondary color of the card
---@field loc_vars? table Localization variables for the card
---@field loc_txt? string Localization text for the card
---@field collection_rows? table The collection rows for the card
---@field config? table Additional configuration for the card
---@field cost number The cost of the card
---@field blueprint_compat? boolean Indicates if the card is compatible with blueprints
---@field eternal_compat? boolean Indicates if the card is compatible with eternal items
---@field perishable_compat? boolean Indicates if the card is compatible with perishable items
---@field rarity string The rarity of the card


---@class BALATRO_T.Card : BALATRO_T.Moveable
---@field params BALATRO_T.Card.Params Parameters of the card
---@field config BALATRO_T.Card.Config Configuration of the card
---@field CT table CT of the card
---@field tilt_var table Tilt variables of the card
---@field ambient_tilt number Ambient tilt of the card
---@field states table States of the card
---@field playing_card boolean Whether the card is a playing card
---@field sort_id number Sort ID of the card
---@field back string Back of the card
---@field bypass_discovery_center boolean Whether to bypass discovery center
---@field bypass_discovery_ui boolean Whether to bypass discovery UI
---@field bypass_lock boolean Whether to bypass lock
---@field no_ui boolean Whether the card has no UI
---@field children table Children of the card
---@field base_cost number Base cost of the card
---@field extra_cost number Extra cost of the card
---@field cost number Cost of the card
---@field sell_cost number Sell cost of the card
---@field sell_cost_label number Sell cost label of the card
---@field unique_val number Unique value of the card
---@field edition? BALATRO_T.Card.Edition Edition of the card
---@field zoom boolean Whether the card is zoomed
---@field discard_pos table Discard position of the card
---@field facing string Facing of the card
---@field sprite_facing string Sprite facing of the card
---@field flipping string Flipping of the card
---@field area table Area of the card
---@field highlighted boolean Whether the card is highlighted
---@field click_timeout number Click timeout of the card
---@field T table T of the card
---@field debuff boolean Whether the card is debuffed
---@field rank number Rank of the card
---@field added_to_deck boolean Whether the card is added to the deck
---@field label string Label of the card
---@field ability BALATRO_T.Card.Ability Ability of the card
---@field seal string Seal of the card
---@field pinned boolean Whether the card is pinned
---@field base BALATRO_T.Card.Base Base of the card
---@field vortex boolean Whether the card has a vortex
---@field juice table Juice of the card
---@field dissolve number Dissolve of the card
---@field dissolve_colours table Dissolve colours of the card
---@field removed boolean Whether the card is removed
---@field getting_sliced boolean Whether the card is getting sliced
---@field sticker string Sticker of the card
---@field sticker_run string Sticker run of the card
---@field greyed boolean Whether the card is greyed
---@field shadow_height number Shadow height of the card
---@field hover_tilt number Hover tilt of the card
---@field hover_offset { x: number, y: number } Hover offset of the card
Card2 = {}

--- Initializes a new Card instance
---@param X number X coordinate
---@param Y number Y coordinate
---@param W number Width of the card
---@param H number Height of the card
---@param card BALATRO_T.Card The card to be initialized
---@param center BALATRO_T.Card | BALATRO_T.Moveable The center of the card
---@param params BALATRO_T.Card.Params Parameters for the card
function Card:init(X, Y, W, H, card, center, params) end

--- Updates the alert for the card
function Card:update_alert() end

--- Sets the base of the card
---@param card BALATRO_T.Card The card to set the base
---@param initial boolean Whether it is the initial setting
function Card:set_base(card, initial) end

--- Sets the sprites for the card
---@param _center BALATRO_T.Card | BALATRO_T.Moveable The center of the card
---@param _front table The front of the card
function Card:set_sprites(_center, _front) end

--- Sets the ability for the card
---@param center table The center of the card
---@param initial boolean Whether it is the initial setting
---@param delay_sprites boolean Whether to delay the sprites
function Card:set_ability(center, initial, delay_sprites) end

--- Sets the cost for the card
function Card:set_cost() end

--- Sets the edition for the card
---@param edition BALATRO_T.Card.Edition The edition of the card
---@param immediate boolean Whether to set the edition immediately
---@param silent boolean Whether to set the edition silently
function Card:set_edition(edition, immediate, silent) end

--- Sets the seal for the card
---@param _seal string The seal of the card
---@param silent boolean Whether to set the seal silently
---@param immediate boolean Whether to set the seal immediately
function Card:set_seal(_seal, silent, immediate) end

--- Gets the seal of the card
---@param bypass_debuff boolean Whether to bypass the debuff
---@return string The seal of the card
function Card:get_seal(bypass_debuff) end

--- Sets the card as eternal
---@param _eternal boolean Whether the card is eternal
function Card:set_eternal(_eternal) end

--- Sets the card as perishable
---@param _perishable boolean Whether the card is perishable
function Card:set_perishable(_perishable) end

--- Sets the card as rental
---@param _rental boolean Whether the card is rental
function Card:set_rental(_rental) end

--- Sets the debuff for the card
---@param should_debuff boolean Whether to set the debuff
function Card:set_debuff(should_debuff) end

--- Removes the UI for the card
function Card:remove_UI() end

--- Changes the suit of the card
---@param new_suit string The new suit of the card
function Card:change_suit(new_suit) end

--- Adds the card to the deck
---@param from_debuff boolean Whether to add the card from debuff
function Card:add_to_deck(from_debuff) end

--- Removes the card from the deck
---@param from_debuff boolean Whether to remove the card from debuff
function Card:remove_from_deck(from_debuff) end

--- Generates the UIBox unlock table for the card
---@param hidden boolean Whether the UIBox is hidden
---@return table The generated UIBox unlock table
function Card:generate_UIBox_unlock_table(hidden) end

--- Generates the UIBox ability table for the card
---@return table The generated UIBox ability table
function Card:generate_UIBox_ability_table() end

--- Gets the nominal value of the card
---@param mod string The modifier for the nominal value
---@return number The nominal value of the card
function Card:get_nominal(mod) end

--- Gets the ID of the card
---@return number The ID of the card
function Card:get_id() end

--- Checks if the card is a face card
---@param from_boss boolean Whether the check is from a boss
---@return boolean Whether the card is a face card
function Card:is_face(from_boss) end

--- Gets the original rank of the card
---@return string The original rank of the card
function Card:get_original_rank() end

--- Gets the chip bonus of the card
---@return number The chip bonus of the card
function Card:get_chip_bonus() end

--- Gets the chip multiplier of the card
---@return number The chip multiplier of the card
function Card:get_chip_mult() end

--- Gets the chip x multiplier of the card
---@param context table The context for the chip x multiplier
---@return number The chip x multiplier of the card
function Card:get_chip_x_mult(context) end

--- Gets the chip hand multiplier of the card
---@return number The chip hand multiplier of the card
function Card:get_chip_h_mult() end

--- Gets the chip hand x multiplier of the card
---@return number The chip hand x multiplier of the card
function Card:get_chip_h_x_mult() end

--- Gets the edition of the card
---@return table The edition of the card
function Card:get_edition() end

--- Gets the end of round effect of the card
---@param context table The context for the end of round effect
---@return { card: BALATRO_T.Card, effect: boolean, h_dollars: number } The end of round effect of the card
function Card:get_end_of_round_effect(context) end

--- Gets the P dollars of the card
---@return number The P dollars of the card
function Card:get_p_dollars() end

--- Uses the consumeable of the card
---@param area table The area of the card
---@param copier table The copier of the card
function Card:use_consumeable(area, copier) end

--- Checks if the card can use the consumeable
---@param any_state boolean Whether to check any state
---@param skip_check boolean Whether to skip the check
---@return boolean Whether the card can use the consumeable
function Card:can_use_consumeable(any_state, skip_check) end

--- Checks the use of the card
function Card:check_use() end

--- Sells the card
function Card:sell_card() end

--- Checks if the card can be sold
---@param context table The context for selling the card
---@return boolean Whether the card can be sold
function Card:can_sell_card(context) end

--- Calculates the dollar bonus of the card
function Card:calculate_dollar_bonus() end

--- Opens the card
function Card:open() end

--- Redeems the card
function Card:redeem() end

--- Applies the card to the run
---@param center table The center of the card
function Card:apply_to_run(center) end

--- Explodes the card
---@param dissolve_colours table The dissolve colours of the card
---@param explode_time_fac number The explode time factor of the card
function Card:explode(dissolve_colours, explode_time_fac) end

--- Shatters the card
function Card:shatter() end

--- Starts dissolving the card
---@param dissolve_colours table The dissolve colours of the card
---@param silent boolean Whether to dissolve the card silently
---@param dissolve_time_fac number The dissolve time factor of the card
---@param no_juice boolean Whether to dissolve the card without juice
function Card:start_dissolve(dissolve_colours, silent, dissolve_time_fac, no_juice) end

--- Starts materializing the card
---@param dissolve_colours table The dissolve colours of the card
---@param silent boolean Whether to materialize the card silently
---@param timefac number The time factor of the card
function Card:start_materialize(dissolve_colours, silent, timefac) end

--- Calculates the seal of the card
---@param context table The context for calculating the seal
---@return table The calculated seal of the card
function Card:calculate_seal(context) end

--- Calculates the rental of the card
function Card:calculate_rental() end

--- Calculates the perishable of the card
function Card:calculate_perishable() end

--- Calculates the joker of the card
---@param context table The context for calculating the joker
---@return table The calculated joker of the card
function Card:calculate_joker(context) end

--- Checks if the card is of a certain suit
---@param suit string The suit to check
---@param bypass_debuff boolean Whether to bypass the debuff
---@param flush_calc boolean Whether to flush the calculation
---@return boolean Whether the card is of the suit
function Card:is_suit(suit, bypass_debuff, flush_calc) end

--- Sets the card area
---@param area table The area of the card
function Card:set_card_area(area) end

--- Removes the card from the area
function Card:remove_from_area() end

--- Aligns the card
function Card:align() end

--- Flips the card
function Card:flip() end

--- Updates the card
---@param dt number Delta time
function Card:update(dt) end

--- Hard sets the transformation of the card
---@param X number X coordinate
---@param Y number Y coordinate
---@param W number Width of the card
---@param H number Height of the card
function Card:hard_set_T(X, Y, W, H) end

--- Moves the card
---@param dt number Delta time
function Card:move(dt) end

--- Aligns the hover popup of the card
---@return table The alignment of the hover popup
function Card:align_h_popup() end

--- Hovers the card
function Card:hover() end

--- Stops hovering the card
function Card:stop_hover() end

--- Juices up the card
---@param scale number The scale of the juice
---@param rot_amount number The rotation amount of the juice
function Card:juice_up(scale, rot_amount) end

--- Draws the card
---@param layer string The layer to draw
function Card:draw(layer) end

--- Releases the card
---@param dragged table The dragged card
function Card:release(dragged) end

--- Highlights the card
---@param is_highlighted boolean Whether the card is highlighted
function Card:highlight(is_highlighted) end

--- Clicks the card
function Card:click() end

--- Saves the card
---@return table The saved card
function Card:save() end

--- Loads the card
---@param cardTable table The card table to load
---@param other_card table The other card to load
function Card:load(cardTable, other_card) end

--- Removes the card
function Card:remove() end