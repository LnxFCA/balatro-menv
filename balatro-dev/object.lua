---@meta

--- [Object](lua://BALATRO.Object) subclass.
---@class BALATRO.Object.Super : BALATRO.Object.Class
---@field __index BALATRO.Object Metatable index pointing to the Object class itself, used for inheritance.
---@field super BALATRO.Object Reference to the parent class, used for accessing methods and properties of the parent class.


--- [Object](lua://BALATRO.Object) instance.
---@class BALATRO.Object.Instance : BALATRO.Object.Super


---@class BALATRO.Object.Class
---@field init fun(self: BALATRO.Object) Initializes the object. This method can be overridden by subclasses.
---@field extend fun(self: BALATRO.Object): BALATRO.Object.Super Creates a new subclass of the object.
---@field is fun(self: BALATRO.Object, obj: BALATRO.Object.Instance): boolean Checks if the object is an instance of the given class.

--- Base class for all objects in the game.
---@class BALATRO.Object : BALATRO.Object.Class
---@field __index BALATRO.Object Metatable index pointing to the Object class itself, used for inheritance.
Object = {}


--- `Object()` - creates a new instance of [Object](lua://BALATRO.Object).
---@param ... unknown
---@return BALATRO.Object.Instance
Object = function(...) end
