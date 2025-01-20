---@meta

BALATRO_T = {}
BALATRO_T.UIDef = {}

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
}

---@alias BALATRO_T.UIDef.Config.Colour integer[] | table

---@alias BALATRO_T.UIDef.Config.Align "tl" | "tm" | "tr" | "cl" | "cm" | "cr" | "bl" | "bm" | "br"
---@alias BALATRO_T.UIDef.Config.InstanceType "NODE" | "MOVEABLE" | "UIBOX" | "CARDAREA" | "CARD" | "UI_BOX" | "ALERT" | "POPUP"

---@class BALATRO_T.UIDef.Config.Tooltip
---@field title string
---@field text string[]

---@class BALATRO_T.UIDef.Config.RoleType
---@field role_type "Major" | "Minor" | "Glued"

---@class BALATRO_T.UIDef.Common
---@field n number Identifier or index for this definition
---@field config BALATRO_T.UIDef.Config.Common Configuration for this definition
---@field nodes BALATRO_T.UIDef.Common List of child nodes in this definition

---@class BALATRO_T.UIDef.Config.Common
---@field id string? Unique identifier for the element
---@field align BALATRO_T.UIDef.Config.Align? Alignment (e.g., 'cm', 'cl')
---@field padding number? Padding values (e.g., 0.1, 0.2)
---@field colour BALATRO_T.UIDef.Config.Colour? Color of the node (e.g., G.C.WHITE)
---@field r? number Radius or rounding of the node (e.g., 0.1)
---@field hover boolean? Indicates if the node should respond to hover events
---@field button string? Button action associated with the node
---@field shadow boolean? Indicates if the node should have a shadow
---@field minw number? Minimum width of the node
---@field minh number? Minimum height of the node
---@field maxw number? Maximum width of the node
---@field maxh number? Maximum height of the node
---@field emboss number? Emboss effect on the node (e.g., 0.05)
---@field draw_layer number? Drawing layer for the node
---@field object table? An object associated with the node (e.g., DynaText)

---@class BALATRO_T.UIDef.Config.Extra : BALATRO_T.UIDef.Config.Common
---@field h number?
---@field w number?
---@field no_fill boolean?
---@field outline number?
---@field outline_colour BALATRO_T.UIDef.Config.Colour?
---@field juice boolean?
---@field instance_type BALATRO_T.UIDef.Config.InstanceType?
---@field ref_table table?
---@field ref_value string?
---@field func string?
---@field tooltip BALATRO_T.UIDef.Config.Tooltip?
---@field detailed_tooltip BALATRO_T.UIDef.Config.Tooltip?


---@class BALATRO_T.UIDef.Text.Config : BALATRO_T.UIDef.Config.Extra
---@field text string
---@field colour BALATRO_T.UIDef.Config.Colour
---@field scale number
---@field vert number?

---@class BALATRO_T.UIDef.Text : BALATRO_T.UIDef.Common
---@field nodes nil
---@field config BALATRO_T.UIDef.Text.Config
BALATRO_T.UIDef.Text = {
    n = UITEnum.T,
    nodes = nil,
}


---@class BALATRO_T.UIDef.Object.Config : BALATRO_T.UIDef.Config.Common
---@field object table
---@field role_type BALATRO_T.UIDef.Config.InstanceType?

---@class BALATRO_T.UIDef.Object : BALATRO_T.UIDef.Common
---@field config BALATRO_T.UIDef.Object.Config
---@field nodes nil
BALATRO_T.UIDef.Object = {
    n = UITEnum.O,
    nodes = nil,
}

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
---@class UIDef : BALATRO_T.UIDef.Common
---@field n UITEnum
---@field config BALATRO_T.UIDef.Config.Common
---@field nodes UIDef[] | BALATRO_T.UIDef.Common[] | BALATRO_T.UIDef.Text[] | BALATRO_T.UIDef.Object[]
