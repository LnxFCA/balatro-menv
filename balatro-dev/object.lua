---@meta

BALATRO_T = {}

---@class BALATRO_T.Object
---@field __index BALATRO_T.Object Metatable index pointing to the Object class itself, used for inheritance.
BALATRO_T.Object = {}


---@class BALATRO_T.ObjectClass : BALATRO_T.Object
---@field super BALATRO_T.Object Reference to the parent class, used for accessing methods and properties of the parent class.


---@return BALATRO_T.ObjectClass
function BALATRO_T.Object:extend() end

---@param obj any
---@return boolean
function BALATRO_T.Object:is(obj) end


--- Initializes the object. This method can be overridden by subclasses.
function BALATRO_T.Object:init() end

--- Creates a new subclass of the object.
---@return BALATRO_T.Object The new subclass.
function BALATRO_T.Object:extend() end

--- Checks if the object is an instance of the given class.
---@param obj BALATRO_T.Object The class to check against.
---@return boolean true if the object is an instance of the given class, false otherwise.
function BALATRO_T.Object:is(obj) end


--- Creates a new instance of the object.
---@vararg table<any, any> Arguments to pass to the init method.
---@overload fun(...): BALATRO_T.Object
BALATRO_T.Object = function(...) end
