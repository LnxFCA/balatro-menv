---@meta


--- Shared class for center objects. Holds no default values; only register an object directly using this
--- if it doesn't fit any subclass, creating one isn't justified and you know what you're doing.
---@class SMODS.Center : SMODS.GameObject
---@field get_obj function Function to get an object by key.
---@field create_fake_card function Function to create a fake card.
---@field generate_ui function Function to generate UI for the object.
---@field delete function Function to delete the object.
---@field set string Set to which the object belongs.


---@class SMODS_T.Center.Args : SMODS_T.GameObject.Common
---@field get_obj function? Function to get an object by key.
---@field create_fake_card function? Function to create a fake card.
---@field generate_ui function? Function to generate UI for the object.
---@field delete function? Function to delete the object.
---@field inject function? Function to inject the object into the game.
---@field atlas string? Atlas associated with the consumable.
---@field pos { x: number, y: number } The position of the sprite on this atlas, row and column.
---@field cost number? Cost of the consumable.



---@overload fun(args: SMODS_T.Center.Args): SMODS.Center
SMODS.Center = function(args) end


---@class SMODS_T.Consumable.Args :SMODS_T.Center.Args
---@field key string The key of the consumable.
---@field set "Tarot" | "Planet" | "Spectral" | string The set of the consumable.
---@field loc_txt table | string? Localization text for the consumable.
---@field hidden boolean? Indicates if the consumable is hidden.
---@field soul_set string? The soul set of the consumable.
---@field soul_rate number? The soul rate of the consumable.
---@field can_repeat_soul boolean? Indicates if the consumable can repeat soul.
---@field calculate (fun(self: SMODS.Consumable, card: BALATRO_T.Card, context: table): SMODS_T.GameObject.CalculateEffect?)?
---@field generate_ui fun(self: SMODS.Consumable, info_queue: table, card: BALATRO_T.Card, desc_nodes: table, specific_vars: table, full_UI_table: table)? This function need not return anything, its effects should be applied by modifying `desc_nodes`.
---@field use fun(self: SMODS.Consumable, card: BALATRO_T.Card, area: BALATRO_T.CardArea, copier: table?)? Defines the behavior of a consumable when used.
---@field can_use (fun(self: SMODS.Consumable, card: BALATRO_T.Card): boolean?)? Function to check if a consumable can be used.
---@field keep_on_use (fun(self: SMODS.Consumable, card: BALATRO_T.Card): boolean?)? Function to check if a consumable should be kept after use.
---@field set_ability (fun(self: SMODS.Consumable, card: BALATRO_T.Card, initial: table, delay_sprites: boolean): boolean?)? Set up initial ability values or manipulate sprites in an advanced way.
---@field add_to_deck (fun(self: SMODS.Consumable, card: BALATRO_T.Card, from_debuff: boolean): boolean?)? Modify the game state when this card is obtained.
---@field remove_from_deck (fun(self: SMODS.Consumable, card: BALATRO_T.Card): boolean?)? Modify the game state when this card is sold, destroyed, or otherwise removed. Cards are considered removed when debuffed (in this case, from_debuff will be true).
---@field in_pool (fun(self: SMODS.Consumable, args: table): boolean | { allow_duplicates: boolean })? Define custom logic for when a card is allowed to spawn. A card can spawn if in_pool returns true and all other checks are met.
---@field update (fun(self: SMODS.Consumable, card: BALATRO_T.Card, dt: number): boolean?)? For actions that happen every frame.
---@field set_sprites (fun(self: SMODS.Consumable, card: BALATRO_T.Card, front: table): boolean?)? For advanced sprite manipulation that happens when a card is created or loaded.
---@field load (fun(self: SMODS.Consumable, card: BALATRO_T.Card, card_table: table, other_card: BALATRO_T.Card): boolean?)? For modifications to sprites or the card itself when a run is reloaded.
---@field check_for_unlock (fun(self: SMODS.Consumable, args: table): boolean)? Configure unlock conditions. Refer to the function `check_for_unlock` in Balatro's code for more information.
---@field set_badges (fun(self: SMODS.Consumable, card: BALATRO_T.Card, badges: table))? Add additional badges, leaving existing badges intact. This function doesn't return; add badges by appending to `badges`.
---@field set_card_type_badge (fun(self: SMODS.Consumable, card: BALATRO_T.Card, badges: table))? Same as `set_badges`, but bypasses creation of the card type / rarity badge, allowing you to replace it with a custom one.
---@field draw (fun(self: SMODS.Consumable, card: BALATRO_T.Card, layer: table))? Draws the sprite and shader of the card.


---@class SMODS.Consumable : SMODS_T.Consumable.Args


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

---@overload fun(args: SMODS_T.Consumable.Args): SMODS.Consumable
SMODS.Consumable = function(args) end


---@class SMODS.Tarot : SMODS.Consumable
---@field set "Tarot"


---@overload fun(args: SMODS_T.Consumable.Args): SMODS.Consumable
SMODS.Tarot = function(args) end


---@class SMODS.Planted : SMODS.Consumable
---@field set "Planet"


---@overload fun(args: SMODS_T.Consumable.Args): SMODS.Consumable
SMODS.Planet = function(args) end
