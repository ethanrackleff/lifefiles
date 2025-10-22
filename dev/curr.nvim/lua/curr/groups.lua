

local M = {}
local colors = require("curr.palette")

local eInkMode = (1 == colors.BANDW)  
M.setup = function()
  return {

    Normal       = { fg = colors.fg, bg = colors.bg },
    NormalFloat  = { fg = colors.fg, bg = colors.bg },
    --Comments italicized
    Comment      = { fg = colors.comment, italic = eInkMode },               
    --data types underlined
    Constant     = { fg = colors.number, underline = true, italic = eInkMode},
    String       = { fg = colors.number, underline = eInkMode },             
    Character    = { fg = colors.number, underline = eInkMode },             
    Number       = { fg = colors.number, underline = eInkMode },             
    Boolean      = { fg = colors.cyan, underline = eInkMode },               
    Float        = { fg = colors.number, underline = eInkMode },             

    FloatBorder  = { fg = colors.white },
    Operator     = { fg = colors.operator },

    --General keywords are bolded
    Keyword      = { fg = colors.cyan, bold = eInkMode },                  
    Keywords     = { fg = colors.cyan, bold = eInkMode },                   
    Identifier   = { fg = colors.cyan },
    Function     = { fg = colors.yellow, bold = true, underline = eInkMode },   
    Statement    = { fg = colors.keyword, bold = true },                
    Conditional  = { fg = colors.blue, bold = true },                   
    Repeat       = { fg = colors.blue, bold = eInkMode },               
    Label        = { fg = colors.cyan, bold = eInkMode },               
    Exception    = { fg = colors.magenta, bold = eInkMode },           

    --Preprocessor. focus on includes and defines
    PreProc      = { fg = colors.yellow },                             
    Include      = { fg = colors.magenta, bold = true, italic = true }, 
    Define       = { fg = colors.magenta, bold = true, italic = true},  
    Title        = { fg = colors.cyan },
    Macro        = { fg = colors.magenta },
    PreCondit    = { fg = colors.cyan },

    --Types, classes, structs are bolded and underlined
    Type         = { fg = colors.cyan, bold = true, underline = eInkMode }, 
    StorageClass = { fg = colors.blue, bold = true, underline = eInkMode }, 
    Structure    = { fg = colors.yellow, bold = true, underline = eInkMode },
    TypeDef      = { fg = colors.yellow, bold = true, underline = eInkMode },
    Special      = { fg = colors.number, italic = true },               

    --Other
    SpecialComment = { fg = colors.comment, italic = true },            
    Error        = { fg = colors.bright_red, italic = true, bold = true, underline = true }, 
    Todo         = { fg = colors.magenta, bold = true, italic = true }, 
    Underlined   = { fg = colors.cyan, underline = true },

    -- UI and Editor elements (unchanged styles)
    Cursor       = { fg = colors.cursor },
    CursorLineNr = { fg = colors.fg, bold = true },
    SignColumn   = { bg = colors.bg },
    Conceal      = { fg = colors.comment },
    CursorColumn = { bg = colors.black },
    CursorLine   = { bg = colors.comment },
    ColorColumn  = { bg = colors.selection },
    StatusLine   = { fg = colors.bg, bg = colors.fg },
    StatusLineNC = { fg = colors.fg, bg = colors.fg },
    StatusLineTerm   = { fg = colors.white, bg = colors.black },
    StatusLineTermNC = { fg = colors.comment },
    Directory    = { fg = colors.cyan },
    DiffAdd      = { fg = colors.bg, bg = colors.number },
    DiffChange   = { fg = colors.orange },
    DiffDelete   = { fg = colors.red },
    DiffText     = { fg = colors.comment },
    ErrorMsg     = { fg = colors.bright_red },
    VertSplit    = { fg = colors.black },
    WinSeparator = { fg = colors.bg },
    Folded       = { fg = colors.comment },
    FoldColumn   = {},
    Search       = { fg = colors.black, bg = colors.number },
    IncSearch    = { fg = colors.number, bg = colors.comment },
    LineNr       = { fg = colors.comment },
    MatchParen   = { fg = colors.fg, underline = true },
    NonText      = { fg = colors.nontext },
    Pmenu        = { fg = colors.bg, bg = colors.fg },
    PmenuSel     = { fg = colors.white, bg = colors.comment },
    PmenuSbar    = { bg = colors.bg },
    PmenuThumb   = { bg = colors.comment },
    Question     = { fg = colors.magenta },
    QuickFixLine = { fg = colors.black, bg = colors.yellow },
    SpecialKey   = { fg = colors.nontext },
    SpellBad     = { fg = colors.bright_red, underline = true },
    SpellCap     = { fg = colors.yellow },
    SpellLocal   = { fg = colors.yellow },
    SpellRare    = { fg = colors.yellow },
    TabLine      = { fg = colors.comment },
    TabLineSel   = { fg = colors.white },
    TabLineFill  = { bg = colors.bg },
    Terminal     = { fg = colors.white, bg = colors.black },
    Visual       = { bg = colors.visual },
    VisualNOS    = { fg = colors.visual },
    WarningMsg   = { fg = colors.yellow },
    WildMenu     = { fg = colors.black, bg = colors.white },

    -- **TreeSitter-based syntax groups** 
    -- (These mirror the above, with eInkMode styles applied similarly)
    ["@error"]              = { fg = colors.diag_error },
    ["@punctuation.delimiter"] = { fg = colors.fg },
    ["@punctuation.bracket"]   = { fg = colors.fg },
    ["@punctuation.special"]   = { fg = colors.cyan },

    ["@constant"]          = { fg = colors.constant },       -- constants (might get italic/underline via base group if linked)
    ["@constant.builtin"]  = { fg = colors.constant },
    ["@symbol"]            = { fg = colors.magenta },
    ["@constant.macro"]    = { fg = colors.constant },

    ["@string.regex"]      = { fg = colors.red },
    ["@string"]            = { fg = colors.string },
    ["@string.escape"]     = { fg = colors.cyan },
    ["@character"]         = { fg = colors.number },
    ["@number"]            = { fg = colors.number },
    ["@boolean"]           = { fg = colors.yellow },
    ["@float"]             = { fg = colors.number },

    ["@annotation"]        = { fg = colors.yellow },
    ["@attribute"]         = { fg = colors.cyan },
    ["@namespace"]         = { fg = colors.number },

    ["@function.builtin"]  = { fg = colors.Function, bold = true, underline = eInkMode },
    ["@function"]          = { fg = colors.Function, bold = true, underline = eInkMode },
    ["@function.macro"]    = { fg = colors.Function, bold = true, underline = eInkMode },

    ["@parameter"]         = { fg = colors.number },
    ["@parameter.reference"] = { fg = colors.number },
    ["@method"]            = { fg = colors.number, bold = eInkMode, underline = eInkMode }, -- methods bold/underline if eInk
    ["@field"]             = { fg = colors.number },
    ["@property"]          = { fg = colors.type },
    ["@constructor"]       = { fg = colors.cyan },

    ["@conditional"]       = { fg = colors.blue, bold = eInkMode },    
    ["@repeat"]            = { fg = colors.blue, bold = eInkMode },    
    ["@label"]             = { fg = colors.cyan },

    ["@keyword"]           = { fg = colors.keyword, bold = true },     
    ["@keyword.function"]  = { fg = colors.Function, bold = eInkMode },
    ["@keyword.function.ruby"] = { fg = colors.Function },             
    ["@keyword.operator"]  = { fg = colors.blue },
    ["@operator"]          = { fg = colors.blue },
    ["@exception"]         = { fg = colors.magenta },

    ["@type"]              = { fg = colors.bright_cyan, bold = eInkMode, underline = eInkMode }, 
    ["@type.builtin"]      = { fg = colors.cyan, bold = eInkMode, italic = true },      
    ["@type.qualifier"]    = { fg = colors.blue, bold = eInkMode },    
    ["@structure"]         = { fg = colors.magenta, bold = eInkMode, underline = eInkMode }, 
    ["@include"]           = { fg = colors.blue, bold = eInkMode, italic = eInkMode },       

    ["@variable"]          = { fg = colors.variable },
    ["@variable.builtin"]  = { fg = colors.variable },

    ["@text"]              = { fg = colors.number },
    ["@text.strong"]       = { fg = colors.number, bold = true },
    ["@text.emphasis"]     = { fg = colors.yellow, italic = true },
    ["@text.underline"]    = { fg = colors.number },
    ["@text.title"]        = { fg = colors.blue, bold = true },
    ["@text.literal"]      = { fg = colors.number },
    ["@text.uri"]          = { fg = colors.yellow, italic = true },
    ["@text.reference"]    = { fg = colors.number, bold = true },

    ["@tag"]               = { fg = colors.cyan },
    ["@tag.attribute"]     = { fg = colors.number },
    ["@tag.delimiter"]     = { fg = colors.blue },

    -- Semantic tokens (LSP 0.9+)
    ["@class"]       = { fg = colors.cyan },
    ["@struct"]      = { fg = colors.cyan },
    ["@enum"]        = { fg = colors.cyan },
    ["@enumMember"]  = { fg = colors.magenta },
    ["@event"]       = { fg = colors.cyan },
    ["@interface"]   = { fg = colors.cyan },
    ["@modifier"]    = { fg = colors.cyan },
    ["@regexp"]      = { fg = colors.yellow },
    ["@typeParameter"] = { fg = colors.cyan },
    ["@decorator"]   = { fg = colors.cyan },

    -- LSP Semantic token highlights
    ["@lsp.type.class"]      = { fg = colors.cyan, bold = eInkMode, underline = eInkMode },
    ["@lsp.type.enum"]       = { fg = colors.cyan, bold = eInkMode, underline = eInkMode },
    ["@lsp.type.decorator"]  = { fg = colors.number },
    ["@lsp.type.enumMember"] = { fg = colors.magenta, italic = eInkMode },
    ["@lsp.type.function"]   = { fg = colors.number, bold = eInkMode},
    ["@lsp.type.interface"]  = { fg = colors.bright_yellow, bold = eInkMode, underline = eInkMode},
    ["@lsp.type.macro"]      = { fg = colors.cyan },
    ["@lsp.type.method"]     = { fg = colors.number },
    ["@lsp.type.namespace"]  = { fg = colors.number, bold = eInkMode },
    ["@lsp.type.parameter"]  = { fg = colors.number },
    ["@lsp.type.property"]   = { fg = colors.bright_magenta },
    ["@lsp.type.struct"]     = { fg = colors.cyan, bold = eInkMode, underline = eInkMode},
    ["@lsp.type.type"]       = { fg = colors.yellow, bold = eInkMode },
    ["@lsp.type.variable"]   = { fg = colors.fg },

    -- HTML/XML highlights
    htmlArg       = { fg = colors.orange },
    htmlBold      = { fg = colors.yellow, bold = true },    -- <b> text **bold**
    htmlEndTag    = { fg = colors.cyan },
    htmlH1        = { fg = colors.blue },
    htmlH2        = { fg = colors.blue },
    htmlH3        = { fg = colors.blue },
    htmlH4        = { fg = colors.blue },
    htmlH5        = { fg = colors.blue },
    htmlH6        = { fg = colors.blue },
    htmlItalic    = { fg = colors.magenta, italic = true }, -- <i> text *italic*
    htmlLink      = { fg = colors.magenta, underline = true }, -- hyperlink underlined
    htmlSpecialChar   = { fg = colors.yellow },
    htmlSpecialTagName= { fg = colors.cyan },
    htmlTag       = { fg = colors.cyan },
    htmlTagN      = { fg = colors.cyan },
    htmlTagName   = { fg = colors.cyan },
    htmlTitle     = { fg = colors.white },

    -- Markdown highlights (headers, bold/italic text, etc.)
    markdownBlockquote    = { fg = colors.yellow, italic = true },
    markdownBold          = { fg = colors.orange, bold = true },   -- **bold** text
    markdownCode          = { fg = colors.orange },
    markdownCodeBlock     = { fg = colors.orange },
    markdownCodeDelimiter = { fg = colors.red },
    markdownH1            = { fg = colors.blue, bold = true },
    markdownH2            = { fg = colors.blue, bold = true },
    markdownH3            = { fg = colors.blue, bold = true },
    markdownH4            = { fg = colors.blue, bold = true },
    markdownH5            = { fg = colors.blue, bold = true },
    markdownH6            = { fg = colors.blue, bold = true },
    markdownHeadingDelimiter = { fg = colors.red },
    markdownHeadingRule   = { fg = colors.comment },
    markdownId            = { fg = colors.magenta },
    markdownIdDeclaration = { fg = colors.cyan },
    markdownIdDelimiter   = { fg = colors.magenta },
    markdownItalic        = { fg = colors.yellow, italic = true }, -- *italic* text
    markdownLinkDelimiter = { fg = colors.magenta },
    markdownLinkText      = { fg = colors.blue },
    markdownListMarker    = { fg = colors.cyan },
    markdownOrderedListMarker = { fg = colors.red },
    markdownRule          = { fg = colors.comment },

    -- Diff and Git highlight groups (kept mostly color-based as they often use symbols or background)
    diffAdded      = { fg = colors.orange },
    diffRemoved    = { fg = colors.red },
    diffFileId     = { fg = colors.yellow, bold = true, reverse = true },
    diffFile       = { fg = colors.nontext },
    diffNewFile    = { fg = colors.orange },
    diffOldFile    = { fg = colors.red },

    debugPc        = { bg = colors.menu },
    debugBreakpoint= { fg = colors.red, reverse = true },

    -- Git Signs
    GitSignsAdd    = { fg = colors.number },
    GitSignsChange = { fg = colors.orange },
    GitSignsDelete = { fg = colors.bright_red },
    GitSignsAddLn  = { fg = colors.black, bg = colors.number },
    GitSignsChangeLn = { fg = colors.black, bg = colors.orange },
    GitSignsDeleteLn = { fg = colors.black, bg = colors.bright_red },
    GitSignsCurrentLineBlame = { fg = colors.white },

    -- NvimTree plugin highlights
    NvimTreeNormal         = { fg = colors.fg, bg = colors.menu },
    NvimTreeVertSplit      = { fg = colors.bg, bg = colors.bg },
    NvimTreeRootFolder     = { fg = colors.fg, bold = true },
    NvimTreeGitDirty       = { fg = colors.yellow },
    NvimTreeGitNew         = { fg = colors.number },
    NvimTreeImageFile      = { fg = colors.blue },
    NvimTreeFolderIcon     = { fg = colors.magenta },
    NvimTreeIndentMarker   = { fg = colors.nontext },
    NvimTreeEmptyFolderName= { fg = colors.comment },
    NvimTreeFolderName     = { fg = colors.fg },
    NvimTreeSpecialFile    = { fg = colors.blue, underline = true },
    NvimTreeOpenedFolderName = { fg = colors.fg },
    NvimTreeCursorLine     = { bg = colors.comment },
    NvimTreeIn             = { bg = colors.comment },

    -- LSP Diagnostics
    DiagnosticError            = { fg = colors.red },
    DiagnosticWarn             = { fg = colors.yellow },
    DiagnosticInfo             = { fg = colors.cyan },
    DiagnosticHint             = { fg = colors.cyan },
    DiagnosticUnderlineError   = { undercurl = true, sp = colors.red },
    DiagnosticUnderlineWarn    = { undercurl = true, sp = colors.yellow },
    DiagnosticUnderlineInfo    = { undercurl = true, sp = colors.cyan },
    DiagnosticUnderlineHint    = { undercurl = true, sp = colors.cyan },
    DiagnosticSignError        = { fg = colors.red },
    DiagnosticSignWarn         = { fg = colors.yellow },
    DiagnosticSignInfo         = { fg = colors.cyan },
    DiagnosticSignHint         = { fg = colors.cyan },
    DiagnosticFloatingError    = { fg = colors.red },
    DiagnosticFloatingWarn     = { fg = colors.yellow },
    DiagnosticFloatingInfo     = { fg = colors.cyan },
    DiagnosticFloatingHint     = { fg = colors.cyan },
    DiagnosticVirtualTextError = { fg = colors.red },
    DiagnosticVirtualTextWarn  = { fg = colors.yellow },
    DiagnosticVirtualTextInfo  = { fg = colors.cyan },
    DiagnosticVirtualTextHint  = { fg = colors.cyan },

    -- (For backward compatibility) LSP Diagnostics old group names
    LspDiagnosticsDefaultError       = { fg = colors.red },
    LspDiagnosticsDefaultWarning     = { fg = colors.yellow },
    LspDiagnosticsDefaultInformation = { fg = colors.cyan },
    LspDiagnosticsDefaultHint        = { fg = colors.cyan },
    LspDiagnosticsUnderlineError     = { fg = colors.red, undercurl = true },
    LspDiagnosticsUnderlineWarning   = { fg = colors.yellow, undercurl = true },
    LspDiagnosticsUnderlineInformation = { fg = colors.cyan, undercurl = true },
    LspDiagnosticsUnderlineHint      = { fg = colors.cyan, undercurl = true },
    LspReferenceText  = { fg = colors.yellow, bg = colors.selection },
    LspReferenceRead  = { fg = colors.yellow, bg = colors.selection },
    LspReferenceWrite = { fg = colors.yellow, bg = colors.selection },
    LspCodeLens       = { fg = colors.cyan },

    -- Completion Menu (Cmp) linking to syntax groups
    CmpItemAbbr          = { fg = colors.white, bg = colors.bg },
    CmpItemKind          = { fg = colors.white, bg = colors.bg },
    CmpItemKindMethod    = { link = "@method" },       -- inherits method style (bold/underline if eInk)
    CmpItemKindText      = { link = "@text" },
    CmpItemKindFunction  = { link = "@function" },     -- inherits function style
    CmpItemKindConstructor = { link = "@type" },
    CmpItemKindVariable  = { link = "@variable" },
    CmpItemKindClass     = { link = "@type" },
    CmpItemKindInterface = { link = "@type" },
    CmpItemKindModule    = { link = "@namespace" },
    CmpItemKindProperty  = { link = "@property" },
    CmpItemKindOperator  = { link = "@operator" },
    CmpItemKindReference = { link = "@parameter.reference" },
    CmpItemKindUnit      = { link = "@field" },
    CmpItemKindValue     = { link = "@field" },
    CmpItemKindField     = { link = "@field" },
    CmpItemKindEnum      = { link = "@field" },
    CmpItemKindKeyword   = { link = "@keyword" },
    CmpItemKindSnippet   = { link = "@text" },
    CmpItemKindEvent     = { link = "@constant" },
    CmpItemKindEnumMember= { link = "@field" },
    CmpItemKindConstant  = { link = "@constant" },
    CmpItemKindStruct    = { link = "@structure" },
    CmpItemKindTypeParameter = { link = "@parameter" },

    -- Window picker highlight
    WinPicker = { fg = colors.bg, bg = colors.number }

  }
end

return M

