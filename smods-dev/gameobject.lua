---@meta

SMODS = {}

--- Base class for all game objects in SMODS.
---@class SMODS.GameObject : BALATRO_T.Object
---@field subclasses SMODS.GameObject | table? List of subclasses extending this class.
---@field obj_table table? Table of registered objects.
---@field obj_buffer table? Buffer of registered objects.
---@field required_params table? List of required parameters for object creation.
---@field prefix_config SMODS_T.GameObject.PrefixConfig? Configuration for prefixing object keys.
---@field registered boolean? Indicates if the object is registered.
---@field key string? Unique key for the object.
---@field set string? Set to which the object belongs.
---@field mod SMODS_T.Mod? Current mod associated with the object.
---@field loc_txt table? Localization text for the object.
---@field dependencies table? List of dependencies for the object.
---@field original_key string? Original key before prefixing.
---@field above_stake string? Key of the stake above this object.
---@field applied_stakes table? List of applied stakes.
---@field unlocked_stake string? Key of the stake unlocked by this object.
---@field discovered boolean? Indicates if the object is discovered.
---@field unlocked boolean? Indicates if the object is unlocked.
---@field injected boolean? Indicates if the object is injected.
---@field pos table? Position of the object.
---@field atlas string? Atlas associated with the object.
---@field sticker_pos table? Position of the sticker associated with the object.
---@field colour BALATRO_T.UIDef.Config.Colour? Colour associated with the object.
---@field shiny? boolean Indicates if the object is shiny.
---@field rarity_original? string Original rarity of the object.
---@field rarity? string Rarity of the object.
---@field loc_vars? function Function to get localization variables.
---@field modifiers? function Function to apply modifiers to the object.
---@field process_loc_text? function Function to process localization text for the object.
---@field inject function? Function to inject the object into the game.
---@field register function? Function to register the object.
---@field check_dependencies function? Function to check dependencies for the object.
---@field check_duplicate_register function? Function to check for duplicate registration.
---@field check_duplicate_key function? Function to check for duplicate keys.
---@field take_ownership function? Function to take ownership of an existing object.
---@field send_to_subclasses function? Function to send a message to all subclasses.
---@field inject_class function? Function to inject the class into the game.
---@field obj_list function? Function to create a list of objects from a list of keys.
SMODS.GameObject = {}


--- Creates a new subclass of `GameObject` and copies properties from the provided table `o` to the new subclass.
---@param o table A table containing properties to be copied to the new subclass.
---@return SMODS.GameObject The new subclass.
function SMODS.GameObject.extend(o) end


--- Checks if the object has already been registered.
---@return boolean true if the object is already registered, otherwise false.
function SMODS.GameObject:check_duplicate_register() end


--- Checks if the object's key is a duplicate of an existing key.
---@return boolean true if a duplicate key is found, otherwise false.
function SMODS.GameObject:check_duplicate_key() end


--- Checks if the object has all required dependencies.
---@return boolean true if all dependencies are met, otherwise false.
function SMODS.GameObject:check_dependencies() end


--- Processes localization text for the object.
function SMODS.GameObject:process_loc_text() end


--- Recursively searches for functions with the given key on all subordinate classes and runs all found functions with the given arguments.
---@param func string The function key to search for.
---@param ... any The arguments to pass to the found functions.
function SMODS.GameObject:send_to_subclasses(func, ...) end


--- Injects all direct instances of the class by calling inject() on each instance and performs any necessary setup for the class itself.
function SMODS.GameObject:inject_class() end

--- Takes control of vanilla objects. The child class must implement get_obj for this to function.
---@param key string The key of the object to take ownership of.
---@param obj table The object to take ownership of.
---@param silent boolean A flag indicating if warnings should be suppressed.
function SMODS.GameObject:take_ownership(key, obj, silent) end


--- Creates a list of objects from a list of keys.
---@param reversed boolean A flag indicating if the list should be reversed.
---@return table A list of objects.
function SMODS.GameObject:obj_list(reversed) end


---@overload fun(o: table): SMODS.GameObject
SMODS.GameObject = function(o) end


---@class SMODS_T.GameObject.PrefixConfig
---@field key string? The object key.
---@field atlas table | string? Includes all atlas-related fields like hc_atlas and lc_atlas on suits and ranks.
---@field shader table | string?
---@field card_key string? The card key.
---@field above_stake string?
---@field applied_stakes string[]? Also supports options per index.
---@field mod SMODS_T.Mod | boolean? Setting this to `false` removes your mod prefix.
---@field class SMODS.GameObject | boolean? Setting this to `false` removes the class prefix.


---@class SMODS_T.GameObject.CalculateEffect
---@field chips number? The number of chips to add or remove.
---@field mult number? The multiplier to apply.
---@field xmult number? The multiplier to apply to the multiplier.
---@field dollars number? The number of dollars to add or remove.
---@field swap boolean? Swaps current chips and mult values with each other.
---@field level_up boolean? Levels up the played hand by the number returned.
---@field saved boolean? Used during `context.end_of_round` to prevent game over.
---@field message table | string? Used to return a custom message.
---@field message_card table | string?
---@field colour BALATRO_T.UIDef.Config.Colour? The colour to apply to the message.
---@field sound string? The sound to play.
---@field func function? Return a function to be called at the correct timing (advanced).
---@field extra SMODS_T.GameObject.CalculateEffect? Extra effect to apply.
---@field remove_default_message boolean? Removes the default message.
---@field chip_message 'text' | string | table? The message to display for chips.


---@class SMODS_T.GameObject.Common
---@field name string? Used by the game to identify certain objects.
---@field loc_txt table?
---@field unlocked boolean? Sets the default unlock state of an object. If set to false, your object won't be obtainable until it's unlocked; make sure to implement an unlock condition.
---@field discovered boolean? Sets the default discovery state of an object. If set to true, your object can be viewed in the collection without needing to find it in a run.
---@field no_collection boolean? If set to true, this object will not show up in the collection.
---@field config table? Put initial values for your object in `config`.
---@field prefix_config SMODS_T.GameObject.PrefixConfig | boolean? Defining this table gives you control over where prefixes should be added to keys you specify. Set to `false` to apply no prefixes to any key.
---@field dependencies table? A list of one or more mod IDs. Your object will only be loaded when all specified mods are present.
---@field display_size { w: number, h: number}? Changes the display size of cards by scaling them by a factor relative to pixel size.
---@field pixel_size { w: number, h: number}? Changes how large the sprite of this card is considered.
---@field calculate fun(self: SMODS.GameObject, card: BALATRO_T.Card, content: table): SMODS_T.GameObject.CalculateEffect? A function that calculates the card's effect.
---@field loc_vars fun(self: SMODS.GameObject, info_queue: table, card: BALATRO_T.Card): table? A function that returns a table of localization variables.
