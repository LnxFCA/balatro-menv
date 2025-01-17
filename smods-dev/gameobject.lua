---@meta

SMODS = {}


---@class SMODS.GameObject : BALATRO_T.ObjectClass
SMODS.GameObject = {}

---@type SMODS_T.GameObjectClass[] A table that holds all subclasses of `SMODS.GameObject`
SMODS.GameObject.subclasses = {}

--- Creates a new subclass of `GameObject` and copies properties from the provided table `o` to the new subclass.
---@param o table A table containing properties to be copied to the new subclass.
---@return SMODS_T.GameObjectClass The new subclass.
function SMODS.GameObject.extend(o) end

--- Modifies the key of an object by adding a prefix if certain conditions are met.
---@param obj table The object whose key is to be modified.
---@param prefix string The prefix to be added to the key.
---@param condition boolean A condition that determines whether the prefix should be added.
---@param key string The key to be modified. Defaults to 'key'.
function SMODS.modify_key(obj, prefix, condition, key) end

--- Adds prefixes to various keys in the object based on the class and mod configurations.
---@param cls table The class to which the object belongs.
---@param obj table The object whose keys are to be prefixed.
---@param from_take_ownership boolean A flag indicating if the prefixes are being added from a take ownership operation.
function SMODS.add_prefixes(cls, obj, from_take_ownership) end

--- Checks if the object has already been registered.
---@return boolean true if the object is already registered, otherwise false.
function SMODS.GameObject:check_duplicate_register() end

--- Checks if the object's key is a duplicate of an existing key.
---@return boolean true if a duplicate key is found, otherwise false.
function SMODS.GameObject:check_duplicate_key() end

--- Registers the object by adding it to the object table and buffer.
function SMODS.GameObject:register() end

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

---@class SMODS_T.GameObjectClass : SMODS.GameObject
---@field super SMODS.GameObject
---@field key string The set to which the object belongs. Used for logging purposes.
---@field required_params string[] A list of required parameters that must be present in the object.
---@field prefix_config table | boolean Configuration for prefixing keys. Can be a table or `false` to disable prefixing.
---@field obj_table table A table that holds all instances of the object.
---@field obj_buffer table A buffer that holds the keys of all instances of the object.
---@field registered boolean Indicates if the object has been registered.
---@field dependencies table A list of dependencies required by the object.
---@field loc_txt table Localization text for the object.
---@field mod SMODS_T.Mod

---@class SMODS_T.GameObjectArgs
---@field mod SMODS_T.Mod | nil The current mod. Automatically set to `SMODS.current_mod`.
---@field required_params table | nil A list of required parameters that must be present in the object.
---@field set string The set to which the object belongs. Used for logging and error messages.
---@field prefix_config table | boolean | nil Configuration for prefixing keys. Can be a table or `false` to disable prefixing.
---@field key string The unique key for the object.
---@field check_duplicate_register nil | fun(): boolean A method to check if the object has already been registered.
---@field check_duplicate_key nil | fun(): boolean A method to check if the object's key is a duplicate of an existing key.
---@field register nil | fun() A method to register the object.


---@overload fun(o: SMODS_T.GameObjectArgs): SMODS.GameObject
SMODS.GameObject = function(o) end
