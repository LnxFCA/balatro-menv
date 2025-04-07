---@meta


---@class BALATRO.Back.TriggerArgs
---@field context string
---@field chips? number
---@field mult? number


---@class BALATRO.Back.Effect
---@field center BALATRO.Prototype.Back
---@field text_UI string
---@field config BALATRO.Center.Config


---@class BALATRO.Back.Base
---@field name string
---@field effect BALATRO.Back.Effect
---@field pos BALATRO.Node.Point


---@class BALATRO.Back.SaveTable : BALATRO.Back.Base
---@field key string


---@class BALATRO.Back : BALATRO.Back.Class, BALATRO.Back.Base
---@field loc_name string
local Back = {}


---@class BALATRO.Back.Class : BALATRO.Object.Super
---@field init fun(self: BALATRO.Back, selected_back: BALATRO.Prototype.Back)
---@field get_name fun(self: BALATRO.Back): string?
---@field change_to fun(self: BALATRO.Back, new_back?: BALATRO.Prototype.Back)
---@field save fun(self: BALATRO.Back): BALATRO.Back.SaveTable
---@field apply_to_run fun(self: BALATRO.Back)
---@field load fun(self: BALATRO.Back, save_table: BALATRO.Back.SaveTable)


--- Generate Back UI
---@param self BALATRO.Back
---@param other any
---@param ui_scale? number
---@param min_dims? number
---@param challenge? BALATRO.Challenge
---@return BALATRO.UI.Node
Back.generate_UI = function(self, other, ui_scale, min_dims, challenge) end


--- Trigger Back effect
---@param self BALATRO.Back
---@param args BALATRO.Back.TriggerArgs
---@return number, number
Back.trigger_effect = function(self, args) end


--- Trigger Back effect
---@param self BALATRO.Back
---@param args? BALATRO.Back.TriggerArgs
Back.trigger_effect = function(self, args) end


--- `Back()` - Creates a new [Back](lua://BALATRO.Back) object
---@param selected_back BALATRO.Prototype.Back
---@return BALATRO.Back
_G.Back = function(selected_back) end
_G.Back = Back
