---@meta


---@alias BALATRO.Event.Trigger string | "immediate" | "after" | "condition" | "ease"
---@alias BALATRO.Event.Timer string | "REAL" | "TOTAL"
---@alias BALATRO.Event.Ease.Type string | "lerp"


---@class BALATRO.Event.Result
---@field blocking boolean
---@field completed? boolean
---@field pause_skip? boolean
---@field time_done boolean


---@class BALATRO.Event.Ease
---@field type BALATRO.Event.Ease.Type
---@field ref_table table
---@field ref_value string
---@field start_val unknown
---@field end_val unknown
---@field start_time? number
---@field end_time? number


---@class BALATRO.Event.Condition
---@field ref_table table
---@field ref_value string
---@field stop_val unknown


---@class BALATRO.Event.Config.Base
---@field trigger? BALATRO.Event.Trigger
---@field blocking? boolean
---@field blockable? boolean
---@field start_timer? boolean
---@field func? fun(...?: unknown): boolean?
---@field delay? number
---@field no_delete? boolean
---@field pause_force? boolean
---@field timer? BALATRO.Event.Timer
---@field ease? BALATRO.Event.Ease.Type
---@field ref_table? table
---@field ref_value? string


---@class BALATRO.Event.Config.Condition : BALATRO.Event.Config.Base
---@field trigger "condition"
---@field ref_table table
---@field ref_value string
---@field stop_val unknown


---@class BALATRO.Event.Config.Ease : BALATRO.Event.Config.Base
---@field trigger "ease"
---@field ref_table table
---@field ref_value string
---@field start_val unknown
---@field ease_to unknown


---@alias BALATRO.Event.Config BALATRO.Event.Config.Base | BALATRO.Event.Config.Condition | BALATRO.Event.Config.Ease


---@class BALATRO.Event : BALATRO.Event.Class
---@field trigger BALATRO.Event.Trigger
---@field blocking boolean
---@field blockable? boolean
---@field complete boolean
---@field start_timer boolean
---@field func fun(...?: unknown): boolean?
---@field delay number
---@field no_delete boolean
---@field created_on_pause boolean
---@field timer BALATRO.Event.Timer
---@field ease? BALATRO.Event.Ease
---@field condition? BALATRO.Event.Condition
---@field time number
local Event = {}


---@class BALATRO.Event.Class: BALATRO.Object.Super
---@field init fun(self: BALATRO.Event, config: BALATRO.Event.Config)
---@field handle fun(self: BALATRO.Event, results: BALATRO.Event.Result)


--- Check if `T` is an instance of [Event](lua://BALATRO.Event)
---@param self BALATRO.Event
---@param T any
Event.is = function(self, T) end


--- `Event()` - Creates a new [Event](lua://BALATRO.Event) object
---@param config BALATRO.Event.Config
---@return BALATRO.Event
_G.Event = function(config) end
_G.Event = Event


--- EventManager

---@alias BALATRO.EventManager.Queue.Type string | "unlock" | "base" | "tutorial" | "achievement" | "other"


---@class BALATRO.EventManager.Queue
---@field unlock BALATRO.Event[]
---@field base BALATRO.Event[]
---@field tutorial BALATRO.Event[]
---@field achievement BALATRO.Event[]
---@field other BALATRO.Event[]


---@class BALATRO.EventManager : BALATRO.EventManager.Class
---@field queue_timer number
---@field queue_dt number
---@field queues BALATRO.EventManager.Queue
---@field queue_last_processed number
local EventManager = {}


---@class BALATRO.EventManager.Class : BALATRO.Object.Super
---@field init fun(self: BALATRO.EventManager)
---@field clear_queue fun(self: BALATRO.EventManager, queue?: BALATRO.EventManager.Queue.Type, exception?: BALATRO.EventManager.Queue.Type)
---@field update fun(self: BALATRO.EventManager, dt: number, forced?: boolean)


--- Add a new event to the event queue
---@param self BALATRO.EventManager
---@param event BALATRO.Event
---@param queue? BALATRO.EventManager.Queue.Type
---@param front? boolean
EventManager.add_event = function(self, event, queue, front) end


--- `EventManager()` - Creates a new [EventManager](lua://BALATRO.EventManager) object
---@return BALATRO.EventManager
_G.EventManager = function() end
_G.EventManager = EventManager
