---@meta


---@alias BALATRO.Language.Key string
---| "de"
---| "en-us"
---| "es_419"
---| "es_ES"
---| "fr"
---| "id"
---| "it"
---| "ja"
---| "ko"
---| "nl"
---| "pl"
---| "pt_BR"
---| "ru"
---| "zh_CN"
---| "zh_TW"
---| "all"
---@alias BALATRO.Language BALATRO.Language.Base | BALATRO.Language.Lang
---@alias BALATRO.LANGUAGES BALATRO.LANGUAGES.Base | table<string, BALATRO.Language>
---@alias BALATRO.Font BALATRO.Font.Base | BALATRO.Font.Extra
---@alias BALATRO.FONTS BALATRO.Font[]


---@class BALATRO.Language.Base
---@field font number
---@field label string
---@field key BALATRO.Language.Key
---@field omit? boolean


---@class BALATRO.Language.Lang
---@field beta? boolean
---@field button string
---@field warning string[]
---@field font BALATRO.Font


---@class BALATRO.LANGUAGES.Base
---@field en-us BALATRO.Language
---@field de BALATRO.Language
---@field es_419 BALATRO.Language
---@field es_ES BALATRO.Language
---@field fr BALATRO.Language
---@field id BALATRO.Language
---@field it BALATRO.Language
---@field ja BALATRO.Language
---@field ko BALATRO.Language
---@field nl BALATRO.Language
---@field pl BALATRO.Language
---@field pt_BR BALATRO.Language
---@field ru BALATRO.Language
---@field zh_CN BALATRO.Language
---@field zh_TW BALATRO.Language
---@field all1 BALATRO.Language
---@field all2 BALATRO.Language


---@class BALATRO.Font.Base
---@field file string
---@field render_scale number
---@field TEXT_HEIGHT_SCALE number
---@field TEXT_OFFSET BALATRO.Node.Point
---@field FONTSCALE number
---@field squish number
---@field DESCSCALE number


---@class BALATRO.Font.Extra
---@field FONT love.Font
