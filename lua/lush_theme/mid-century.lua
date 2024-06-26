--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl
local theme = lush(function(injected_functions)
    local sym = injected_functions.sym

    local colors = {
        white = hsl(26, 85, 86),
        dark_brown = hsl(15, 17, 16),
        charcoal = hsl(200, 7, 19),
        light_gray = hsl(170, 15, 70),
        dark_gray = hsl(200, 7, 52),
        light_red = hsl(14, 88, 65),
        dark_red = hsl(6, 69, 56),
        light_yellow = hsl(37, 92, 72),
        dark_yellow = hsl(30, 82, 49),
        light_pink = hsl(7, 70, 80),
        dark_pink = hsl(350, 45, 49),
        light_cyan = hsl(176, 45, 60),
        dark_cyan = hsl(176, 40, 42),
        light_green = hsl(135, 45, 70),
        dark_green = hsl(135, 45, 42),
    }

    return {
        -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
        -- groups, mostly used for styling UI elements.
        -- An empty definition `{}` will clear all styling, leaving elements looking
        -- like the 'Normal' group.
        -- To be able to link to a group, it must already be defined.
        --
        -- See :h highlight-groups
        --
        Normal         { bg = colors.dark_brown, fg = colors.white }, -- Normal text
        Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor         { bg = colors.dark_cyan, fg = colors.white }, -- Character under the cursor
        CurSearch      { bg = colors.light_red }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
        lCursor        { Cursor }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM       { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
        CursorLine     { bg = colors.dark_brown.li(5) }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        CursorColumn   { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        ColorColumn    { CursorLine }, -- Columns set with 'colorcolumn'
        Directory      { fg = colors.light_cyan }, -- Directory names (and other special names in listings)
        DiffAdd        { bg = colors.dark_green.da(50) }, -- Diff mode: Added line |diff.txt|
        DiffChange     { bg = colors.dark_cyan.da(30) }, -- Diff mode: Changed line |diff.txt|
        DiffDelete     { bg = colors.dark_red.da(40) }, -- Diff mode: Deleted line |diff.txt|
        DiffText       { bg = colors.light_cyan, fg = colors.dark_brown}, -- Diff mode: Changed text within a changed line |diff.txt|
        -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        TermCursor     { Cursor }, -- Cursor in a focused terminal
        -- TermCursorNC   { }, -- Cursor in an unfocused terminal
        ErrorMsg       { bg = colors.dark_pink }, -- Error messages on the command line
        VertSplit      { fg = colors.light_gray }, -- Column separating vertically split windows
        Folded         { bg = colors.charcoal, fg = colors.light_gray, gui = "italic" }, -- Line used for closed folds
        FoldColumn     { Folded, gui = "normal" }, -- 'foldcolumn'
        SignColumn     { bg = colors.charcoal }, -- Column where |signs| are displayed
        IncSearch      { CurSearch }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- Substitute     { }, -- |:substitute| replacement text highlighting
        LineNr         { fg = colors.dark_brown.li(20).de(30).ro(20), }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        LineNrAbove    { LineNr }, -- Line number for when the 'relativenumber' option is set, above the cursor line
        LineNrBelow    { LineNr }, -- Line number for when the 'relativenumber' option is set, below the cursor line
        CursorLineNr   { CursorLine, fg = colors.light_yellow }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
        -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
        MatchParen     { bg = colors.charcoal, fg = colors.dark_cyan }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea        { }, -- Area for messages and cmdline
        -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg        { fg = colors.light_green }, -- |more-prompt|
        NonText        { LineNr }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        NormalFloat    { bg = colors.charcoal }, -- Normal text in floating windows.
        -- floatborder    { }, -- border of floating windows.
        FloatTitle     { fg = colors.light_yellow }, -- Title of floating windows.
        -- NormalNC       { }, -- normal text in non-current windows
        Pmenu          { NormalFloat }, -- Popup menu: Normal item.
        PmenuSel       { bg = colors.light_cyan, fg = colors.charcoal }, -- Popup menu: Selected item.
        -- PmenuKind      { }, -- Popup menu: Normal item "kind"
        -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
        -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
        -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
        PmenuSbar      { bg = colors.charcoal.da(20) }, -- Popup menu: Scrollbar.
        PmenuThumb     { bg = colors.dark_gray }, -- Popup menu: Thumb of the scrollbar.
        Question       { fg = colors.light_green }, -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search         { bg = colors.light_yellow, fg = colors.dark_brown }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        SpecialKey     { fg = colors.light_cyan }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        StatusLine     { bg = colors.charcoal }, -- Status line of current window
        -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine        { bg = colors.dark_brown.da(25), LineNr }, -- Tab pages line, not active tab page label
        TabLineFill    { bg = colors.charcoal }, -- Tab pages line, where there are no labels
        TabLineSel     { fg = colors.light_gray }, -- Tab pages line, active tab page label
        Title          { fg = colors.light_yellow }, -- Titles for output from ":set all", ":autocmd" etc.
        Visual         { fg = colors.light_cyan, gui = "reverse" }, -- Visual mode selection
        -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg     { fg = colors.dark_yellow }, -- Warning messages
        -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
        WildMenu       { CurSearch }, -- Current match in 'wildmenu' completion
        -- WinBar         { }, -- Window bar of current window
        -- WinBarNC       { }, -- Window bar of not-current windows

        -- Common vim syntax groups used for all kinds of code and markup.
        -- Commented-out groups should chain up to their preferred (*) group
        -- by default.
        --
        -- See :h group-name
        --
        -- Uncomment and edit if you want more specific syntax highlighting.

        Comment        { fg = colors.dark_gray, gui = "italic" }, -- Any comment

        Constant       { fg = colors.white }, -- (*) Any constant
        String         { fg = colors.light_red }, --   A string constant: "this is a string"
        Character      { fg = colors.light_cyan }, --   A character constant: 'c', '\n'
        Number         { Character }, --   A number constant: 234, 0xff
        Boolean        { Character }, --   A boolean constant: TRUE, false
        Float          { Character }, --   A floating point constant: 2.3e10

        Identifier     { fg = colors.white, }, -- (*) Any variable name
        Function       { Identifier }, --   Function name (also: methods for classes)

        Statement      { fg = colors.dark_red }, -- (*) Any statement
        -- Keyword        { }, --   any other keyword
        -- Conditional    { }, --   if, then, else, endif, switch, etc.
        -- Repeat         { }, --   for, do, while, etc.
        -- Label          { }, --   case, default, etc.
        Operator       { fg = colors.light_yellow }, --   "sizeof", "+", "*", etc.
        -- Exception      { }, --   try, catch, throw

        PreProc        { fg = colors.light_gray }, -- (*) Generic Preprocessor
        -- Include        { }, --   Preprocessor #include
        -- Define         { }, --   Preprocessor #define
        -- Macro          { }, --   Same as Define
        -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

        Type           { fg = colors.light_pink }, -- (*) int, long, char, etc.
        -- StorageClass   { }, --   static, register, volatile, etc.
        -- Structure      { }, --   struct, union, enum, etc.
        -- Typedef        { }, --   A typedef

        Special        { fg = colors.light_yellow }, -- (*) Any special symbol
        -- SpecialChar    { }, --   Special character in a constant
        Tag            { fg = colors.light_gray }, --   You can use CTRL-] on this
        Delimiter      { Special }, --   Character that needs attention
        -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
        -- Debug          { }, --   Debugging statements

        Underlined     { fg = colors.light_cyan, gui = "underline" }, -- Text that stands out, HTML links
        -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
        Error          { ErrorMsg }, -- Any erroneous construct
        Todo           { bg = colors.dark_green }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        -- These groups are for the native LSP client and diagnostic system. Some
        -- other LSP clients may use these groups, or use their own. Consult your
        -- LSP client's documentation.

        -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
        --
        -- LspReferenceText            { } , -- Used for highlighting "text" references
        -- LspReferenceRead            { } , -- Used for highlighting "read" references
        -- LspReferenceWrite           { } , -- Used for highlighting "write" references
        -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
        -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
        -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

        -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
        --
        DiagnosticError            { fg = colors.dark_pink } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticWarn             { fg = colors.dark_yellow } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticInfo             { fg = colors.light_gray } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticHint             { fg = colors.dark_gray } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticOk               { fg = colors.dark_cyan } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
        -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
        -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
        -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
        -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
        -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
        -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
        -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
        -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
        -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
        -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
        DiagnosticSignError        { DiagnosticError, bg = SignColumn.bg } , -- Used for "Error" signs in sign column.
        DiagnosticSignWarn         { DiagnosticWarn, bg = SignColumn.bg } , -- Used for "Warn" signs in sign column.
        DiagnosticSignInfo         { DiagnosticInfo, bg = SignColumn.bg } , -- Used for "Info" signs in sign column.
        DiagnosticSignHint         { DiagnosticHint, bg = SignColumn.bg } , -- Used for "Hint" signs in sign column.
        DiagnosticSignOk           { DiagnosticOk, bg = SignColumn.bg } , -- Used for "Ok" signs in sign column.

        -- Tree-Sitter syntax groups.
        --
        -- See :h treesitter-highlight-groups, some groups may not be listed,
        -- submit a PR fix to lush-template!
        --
        -- Tree-Sitter groups are defined with an "@" symbol, which must be
        -- specially handled to be valid lua code, we do this via the special
        -- sym function. The following are all valid ways to call the sym function,
        -- for more details see https://www.lua.org/pil/5.html
        --
        -- sym("@text.literal")
        -- sym('@text.literal')
        -- sym"@text.literal"
        -- sym'@text.literal'
        --
        -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

        -- sym"@text.literal"      { }, -- Comment
        -- sym"@text.reference"    { }, -- Identifier
        -- sym"@text.title"        { }, -- Title
        -- sym"@text.uri"          { }, -- Underlined
        -- sym"@text.underline"    { }, -- Underlined
        -- sym"@text.todo"         { }, -- Todo
        -- sym"@comment"           { }, -- Comment
        -- sym"@punctuation"       { }, -- Delimiter
        -- sym"@constant"          { }, -- Constant
        -- sym"@constant.builtin"  { }, -- Special
        -- sym"@constant.macro"    { }, -- Define
        -- sym"@define"            { }, -- Define
        -- sym"@macro"             { }, -- Macro
        -- sym"@string"            { }, -- String
        -- sym"@string.escape"     { }, -- SpecialChar
        -- sym"@string.special"    { }, -- SpecialChar
        -- sym"@character"         { }, -- Character
        -- sym"@character.special" { }, -- SpecialChar
        -- sym"@number"            { }, -- Number
        -- sym"@boolean"           { }, -- Boolean
        -- sym"@float"             { }, -- Float
        -- sym"@function"          { }, -- Function
        -- sym"@function.builtin"  { }, -- Special
        -- sym"@function.macro"    { }, -- Macro
        -- sym"@parameter"         { }, -- Identifier
        -- sym"@method"            { }, -- Function
        -- sym"@field"             { }, -- Identifier
        -- sym"@property"          { }, -- Identifier
        -- sym"@constructor"       { }, -- Special
        -- sym"@conditional"       { }, -- Conditional
        -- sym"@repeat"            { }, -- Repeat
        -- sym"@label"             { }, -- Label
        -- sym"@operator"          { }, -- Operator
        -- sym"@keyword"           { }, -- Keyword
        -- sym"@exception"         { }, -- Exception
        sym"@variable"          { Identifier }, -- Identifier
        -- sym"@type"              { }, -- Type
        -- sym"@type.definition"   { }, -- Typedef
        -- sym"@storageclass"      { }, -- StorageClass
        -- sym"@structure"         { }, -- Structure
        -- sym"@namespace"         { }, -- Identifier
        -- sym"@include"           { }, -- Include
        -- sym"@preproc"           { }, -- PreProc
        -- sym"@debug"             { }, -- Debug
        -- sym"@tag"               { }, -- Tag
        sym"@tag.attribute" { fg = colors.white },
        sym"@type.qualifier" { Statement },
        sym"@constructor" { Statement },
        sym"@keyword.conditional.ternary" { Operator },
        sym"@markup.link" { Underlined },
        -- This is not a standard highlight. It needs to be defined in a 
        -- custom highlight query for languages that support it, e.g. jsdoc. 
        -- The default maps to Keyword, which doesn't look right in my opinion.
        sym"@comment.tag" { Comment, gui="bold" },
    }
end)
return theme
