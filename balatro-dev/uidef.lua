---@meta

---@enum UITEnum
local UITEnum = {
    T=1, --text
    B=2, --box (can be rounded)
    C=3, --column
    R=4, --row
    O=5, --object - must be a Node
    ROOT=7,
    S=8, --slider
    I=9, --input text box
    padding = 0, --default padding
}

---@alias BALATRO_T.UIDef.Config.Colour integer[] | table

---@alias BALATRO_T.UIDef.Config.Align "tl" | "tm" | "tr" | "cl" | "cm" | "cr" | "bl" | "bm" | "br"
---@alias UIC_InstanceT "NODE" | "MOVEABLE" | "UIBOX" | "CARDAREA" | "CARD" | "UI_BOX" | "ALERT" | "POPUP"

---@class UIC_TooltipT
---@field title string
---@field text string[]

---@class UIC_RoleTypeT
---@field role_type "Major" | "Minor" | "Glued"

---@class BALATRO_T.UIDef.Common
---@field n number Identifier or index for this definition
---@field config BALATRO_T.UIDef.Config.Common Configuration for this definition
---@field nodes BALATRO_T.UIDef.Common List of child nodes in this definition

---@class BALATRO_T.UIDef.Config.Common
---@field align BALATRO_T.UIDef.Config.Align Alignment (e.g., 'cm', 'cl')
---@field padding number Padding values (e.g., 0.1, 0.2)
---@field colour BALATRO_T.UIDef.Config.Colour Color of the node (e.g., G.C.WHITE)
---@field r number Radius or rounding of the node (e.g., 0.1)
---@field hover boolean Indicates if the node should respond to hover events
---@field button string Button action associated with the node
---@field shadow boolean Indicates if the node should have a shadow
---@field minw number Minimum width of the node
---@field minh number Minimum height of the node
---@field maxw number Maximum width of the node
---@field maxh number Maximum height of the node
---@field emboss number Emboss effect on the node (e.g., 0.05)
---@field draw_layer number Drawing layer for the node
---@field object table An object associated with the node (e.g., DynaText)

---@class UIDefConf
---@field id string | nil
---@field align UIC_AlignT | nil
---@field h number | nil
---@field w number | nil
---@field minh number | nil
---@field maxh number | nil
---@field minw number | nil
---@field maxw number | nil
---@field padding number | nil
---@field r number | nil
---@field colour Color | nil
---@field no_fill boolean | nil
---@field outline number | nil
---@field outline_colour Color | nil
---@field emboss number | nil
---@field hover boolean | nil
---@field shadow boolean | nil
---@field juice boolean | nil
---@field instance_type UIC_InstanceT | nil
---@field ref_table table | nil
---@field ref_value string | nil
---@field func string | nil
---@field button string | nil
---@field tooltip UIC_TooltipT | nil
---@field detailed_tooltip UIC_TooltipT | nil


---@class UIDefConf_T : UIDefConf
---@field text string
---@field colour Color
---@field scale number
---@field vert number | nil

---@class UIDef_T : UIDef
---@field nodes nil
---@field config UIDefConf_T
local UIDef_T = {
    n = UITEnum.T,
    nodes = nil,
}


---@class UIDefConf_O : UIDefConf
---@field object table
---@field role_type UIC_RoleTypeT | nil

---@class UIDef_O : UIDef
---@field config UIDefConf_O
---@field nodes nil

--[[
**UIDef type**

*From <https://github.com/Steamodded/smods/wiki/UI-Guide>*.

In Balatro, the basic building block of the UI is UIElement (aka. node),
which is a table with the following fields:

```lua
- `n`: stands for 'node (type)' and determines how the element will handle its contents
- `config`: the properties of the node, akin to CSS properties
- `nodes`: the nodes inside this node (aka. children nodes)
```

**Usage:**

You can use this type as any other Lua type (LuaLS):

Functions:

```lua
---@return UIDef
function create_my_ui()
    ---@type UIDef
    return {}
end
```

Variables:

```lua
---@type UIDef
local myUI = {}
```

--]]
---@class UIDef
---@field n UITEnum
---@field config UIDefConf
---@field nodes UIDef[] | UIDef_T[] | UIDef_O[]
