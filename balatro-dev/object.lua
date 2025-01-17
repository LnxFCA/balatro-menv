---@meta


---@class BALATRO_T.Object
Object = {}


---@class BALATRO_T.ObjectClass : BALATRO_T.Object
---@field super BALATRO_T.Object
local ObjectClass = {}

---@return nil
function Object:init() end

---@return BALATRO_T.ObjectClass
function Object:extend() end

---@param obj any
---@return boolean
function Object:is(obj) end


---@vararg table<any, any>
---@overload fun(...): BALATRO_T.Object
Object = setmetatable({}, {
    __call = function (...) end
})
