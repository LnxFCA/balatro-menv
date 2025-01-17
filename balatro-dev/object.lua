---@meta

BALATRO_T = {}

---@class BALATRO_T.Object
---@field __index BALATRO_T.Object
BALATRO_T.Object = {}


---@class BALATRO_T.ObjectClass : BALATRO_T.Object
---@field super BALATRO_T.Object

---@return nil
function BALATRO_T.Object:init() end

---@return BALATRO_T.ObjectClass
function BALATRO_T.Object:extend() end

---@param obj any
---@return boolean
function BALATRO_T.Object:is(obj) end


---@vararg table<any, any>
---@overload fun(...): BALATRO_T.Object
BALATRO_T.Object = function(...) end
