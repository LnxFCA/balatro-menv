---@meta

---@class Object
Object = {}

---@class ObjectClass : Object
---@field super Object
local ObjectClass = {}

---@return nil
function Object:init() end

---@return ObjectClass
function Object:extend() end

---@param obj any
---@return boolean
function Object:is(obj) end


---@vararg table<any, any>
---@overload fun(...): Object
Object = setmetatable({}, {
    __call = function (...) end
})
