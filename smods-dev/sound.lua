---@meta


---@alias SMODS.Sound.OwnershipType SMODS.Sound.Base | SMODS.GameObject.Empty


---@class SMODS.Sound.T
---@field sound string
---@field per? number
---@field vol? number


---@class SMODS.Sound : SMODS.Sound.Class
---@field obj_table SMODS.Sound[]
---@field set "Sound"
---@field data unknown
local Sound = {}


---@class SMODS.Sound.Replace
---@field key string
---@field times number
---@field args? table


---@class SMODS.Sound.Common : SMODS.Sound.Arguments.Base
---@field replace_sounds SMODS.Sound.Replace[]
---@field stop_sounds table<string, number>
---@field sound_code string
---@field full_path string
---@field should_stream? number


---@class SMODS.Sound.Base : SMODS.Sound.Common, SMODS.GameObject.Base, SMODS.GameObject.Common
---@field inject fun(self: SMODS.Sound)
---@field select_music_track fun(self: SMODS.Sound): number
---@field create_replace_sound fun(self: SMODS.Sound, replace: string | SMODS.Sound.Replace)
---@field create_stop_sound fun(self: SMODS.Sound, key: string, times?: number)
---@field register_global fun(self: SMODS.Sound)
---@field play fun(self: SMODS.Sound, pitch?: number, volume?: number, stop_previous_instance?: boolean, key?: string)
---@field get_current_music fun(self: SMODS.Sound): number
local SoundBase = {}


--- Play the sound registered in this object
---@param self SMODS.Sound.Base
---@param pitch? number
---@param volume? number
---@param stop_previous_instance? boolean
---@param key? string
SoundBase.play = function(self, pitch, volume, stop_previous_instance, key) end


---@class SMODS.Sound.Class : SMODS.GameObject.Super, SMODS.Sound.Base
---@field __index SMODS.Sound
---@field take_ownership fun(self: SMODS.Sound, key: string, obj: SMODS.Sound.OwnershipType, silent?: boolean): SMODS.Sound?
---@field pre_inject_class fun(self: SMODS.Sound)


---@class SMODS.Sound.Arguments.Base
---@field path string | table<string, string>
---@field replace? string | SMODS.Sound.Replace
---@field pitch? number
---@field volume? number
---@field sync? boolean | table<string, boolean>


---@class SMODS.Sound.Arguments : SMODS.GameObject.Common, SMODS.Sound.Arguments.Base
---@field key string


--- `SMODS.Sound()` - Creates a new [SMODS.Sound](lua://SMODS.Sound) object
---@param args SMODS.Sound.Arguments
---@return SMODS.Sound
_G.SMODS.Sound = function(args) end
_G.SMODS.Sound = Sound
