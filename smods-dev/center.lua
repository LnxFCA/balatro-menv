---@meta


--- Shared class for center objects. Holds no default values; only register an object directly using this
--- if it doesn't fit any subclass, creating one isn't justified and you know what you're doing.
---@class SMODS.Center : SMODS.GameObject
---@field get_obj function Function to get an object by key.
---@field create_fake_card function Function to create a fake card.
---@field generate_ui function Function to generate UI for the object.
---@field delete function Function to delete the object.
---@

---@class SMODS_T.Center.Args
---@field get_obj function Function to get an object by key.
---@field create_fake_card function Function to create a fake card.
---@field generate_ui function Function to generate UI for the object.
---@field delete function Function to delete the object.


---@overload fun(args: SMODS_T.Center.Args): SMODS.Center
SMODS.Center = function(args) end


---@class SMODS_T.Consumable.Args
---@field key string The key of the consumable.
---@field set "Tarot" | "Planet" | "Spectral" | string The set of the consumable.
---@field loc_txt string | table The localization text of the consumable.
---@field atlas string? Atlas associated with the consumable.
---@field config table? Configuration for the consumable.
---@field unlocked boolean? Indicates if the consumable is unlocked.
---@field discovered boolean? Indicates if the consumable is discovered.
---@field no_collection boolean? Indicates if the consumable is not part of a collection.
---@field cost number? Cost of the consumable.
---@field hidden boolean? Indicates if the consumable is hidden.
---@field sould_set string? The soul set of the consumable.
---@field soul_rate number? The soul rate of the consumable.
---@field can_repeat_soul boolean? Indicates if the consumable can repeat soul.


--- Class representing a consumable in SMODS.
---@class SMODS.Consumable : SMODS.Center
---@field unlocked boolean Indicates if the consumable is unlocked.
---@field discovered boolean Indicates if the consumable is discovered.
---@field consumeable boolean Indicates if the object is consumable.
---@field pos table Position of the consumable.
---@field atlas string Atlas associated with the consumable.
---@field legendaries table List of legendary consumables.
---@field cost number Cost of the consumable.
---@field config table Configuration for the consumable.
---@field class_prefix string Prefix for the consumable class.
---@field required_params table List of required parameters for consumable creation.
---@field inject function Function to inject the consumable into the game.
---@field delete function Function to delete the consumable.
---@field create_fake_card function Function to create a fake card.
---@field loc_vars function Function to get localization variables.

---@overload fun(args: SMODS_T.Consumable.Args): SMODS.Consumable | SMODS_T.Consumable.Args
SMODS.Consumable = function(args) end


---@class SMODS.Tarot : SMODS.Consumable
---@field set "Tarot"


---@overload fun(args: SMODS_T.Consumable.Args): SMODS.Consumable | SMODS_T.Consumable.Args
SMODS.Tarot = function(args) end


---@class SMODS.Planted : SMODS.Consumable
---@field set "Planet"


---@overload fun(args: SMODS_T.Consumable.Args): SMODS.Consumable | SMODS_T.Consumable.Args
SMODS.Planet = function(args) end


--- Class representing a booster pack in SMODS.
---@class SMODS.Booster : SMODS.Center
---@field required_params table List of required parameters for booster creation.
---@field class_prefix string Prefix for the booster class.
---@field set string Set to which the booster belongs.
---@field atlas string Atlas associated with the booster.
---@field pos table Position of the booster.
---@field loc_txt table Localization text for the booster.
---@field discovered boolean Indicates if the booster is discovered.
---@field weight number Weight of the booster.
---@field cost number Cost of the booster.
---@field config table Configuration for the booster.
---@field process_loc_text function Function to process localization text for the booster.
---@field loc_vars function Function to get localization variables.
---@field generate_ui function Function to generate UI for the booster.
---@field create_card function Function to create a card from the booster.
---@field update_pack function Function to update the booster pack.
---@field ease_background_colour function Function to ease the background color.
---@field create_UIBox function Function to create a UI box for the booster.
---@field take_ownership_by_kind function Function to take ownership of a booster by kind.