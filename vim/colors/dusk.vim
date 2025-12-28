" Dusk - A Vim color scheme for Python, Shell, Markdown, and Text
" Author: Claude
" License: MIT

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "dusk"

" ============================================================================
" Core UI
" ============================================================================
hi Normal       guifg=#d4d4d4 guibg=#1a1a2e ctermfg=252 ctermbg=234
hi Cursor       guifg=#1a1a2e guibg=#f0e68c ctermfg=234 ctermbg=186
hi CursorLine   guibg=#252540 ctermbg=235 cterm=NONE gui=NONE
hi CursorLineNr guifg=#e0af68 guibg=#252540 ctermfg=179 ctermbg=235
hi LineNr       guifg=#565f89 guibg=#1a1a2e ctermfg=60 ctermbg=234
hi VertSplit    guifg=#3b3b5c guibg=#1a1a2e ctermfg=237 ctermbg=234
hi StatusLine   guifg=#d4d4d4 guibg=#3b3b5c ctermfg=252 ctermbg=237 gui=bold cterm=bold
hi StatusLineNC guifg=#565f89 guibg=#2a2a4a ctermfg=60 ctermbg=236
hi Visual       guibg=#3d59a1 ctermbg=61
hi Search       guifg=#1a1a2e guibg=#e0af68 ctermfg=234 ctermbg=179
hi IncSearch    guifg=#1a1a2e guibg=#ff9e64 ctermfg=234 ctermbg=209
hi MatchParen   guifg=#ff9e64 guibg=#3b3b5c ctermfg=209 ctermbg=237 gui=bold cterm=bold

" ============================================================================
" Popup/Float menus
" ============================================================================
hi Pmenu        guifg=#d4d4d4 guibg=#2a2a4a ctermfg=252 ctermbg=236
hi PmenuSel     guifg=#1a1a2e guibg=#7aa2f7 ctermfg=234 ctermbg=111
hi PmenuSbar    guibg=#3b3b5c ctermbg=237
hi PmenuThumb   guibg=#7aa2f7 ctermbg=111

" ============================================================================
" Tabs and Folds
" ============================================================================
hi TabLine      guifg=#565f89 guibg=#2a2a4a ctermfg=60 ctermbg=236
hi TabLineFill  guibg=#1a1a2e ctermbg=234
hi TabLineSel   guifg=#d4d4d4 guibg=#3b3b5c ctermfg=252 ctermbg=237 gui=bold cterm=bold
hi Folded       guifg=#7aa2f7 guibg=#2a2a4a ctermfg=111 ctermbg=236
hi FoldColumn   guifg=#565f89 guibg=#1a1a2e ctermfg=60 ctermbg=234

" ============================================================================
" Diff
" ============================================================================
hi DiffAdd      guifg=#9ece6a guibg=#1a2e1a ctermfg=149 ctermbg=22
hi DiffChange   guifg=#e0af68 guibg=#2e2a1a ctermfg=179 ctermbg=58
hi DiffDelete   guifg=#f7768e guibg=#2e1a1a ctermfg=204 ctermbg=52
hi DiffText     guifg=#1a1a2e guibg=#e0af68 ctermfg=234 ctermbg=179 gui=bold cterm=bold

" ============================================================================
" Messages and Diagnostics
" ============================================================================
hi ErrorMsg     guifg=#f7768e guibg=NONE ctermfg=204 ctermbg=NONE gui=bold cterm=bold
hi WarningMsg   guifg=#e0af68 guibg=NONE ctermfg=179 ctermbg=NONE
hi MoreMsg      guifg=#9ece6a guibg=NONE ctermfg=149 ctermbg=NONE
hi Question     guifg=#7aa2f7 guibg=NONE ctermfg=111 ctermbg=NONE
hi Directory    guifg=#7aa2f7 guibg=NONE ctermfg=111 ctermbg=NONE
hi Title        guifg=#bb9af7 guibg=NONE ctermfg=141 ctermbg=NONE gui=bold cterm=bold

" ============================================================================
" Spelling
" ============================================================================
hi SpellBad     guisp=#f7768e gui=undercurl cterm=undercurl
hi SpellCap     guisp=#e0af68 gui=undercurl cterm=undercurl
hi SpellRare    guisp=#bb9af7 gui=undercurl cterm=undercurl
hi SpellLocal   guisp=#7dcfff gui=undercurl cterm=undercurl

" ============================================================================
" Syntax: General
" ============================================================================
hi Comment      guifg=#565f89 ctermfg=60 gui=italic cterm=italic
hi Constant     guifg=#ff9e64 ctermfg=209
hi String       guifg=#9ece6a ctermfg=149
hi Character    guifg=#9ece6a ctermfg=149
hi Number       guifg=#ff9e64 ctermfg=209
hi Boolean      guifg=#ff9e64 ctermfg=209
hi Float        guifg=#ff9e64 ctermfg=209

hi Identifier   guifg=#7dcfff ctermfg=117
hi Function     guifg=#7aa2f7 ctermfg=111

hi Statement    guifg=#bb9af7 ctermfg=141
hi Conditional  guifg=#bb9af7 ctermfg=141
hi Repeat       guifg=#bb9af7 ctermfg=141
hi Label        guifg=#7aa2f7 ctermfg=111
hi Operator     guifg=#89ddff ctermfg=117
hi Keyword      guifg=#bb9af7 ctermfg=141
hi Exception    guifg=#f7768e ctermfg=204

hi PreProc      guifg=#7dcfff ctermfg=117
hi Include      guifg=#7aa2f7 ctermfg=111
hi Define       guifg=#bb9af7 ctermfg=141
hi Macro        guifg=#7dcfff ctermfg=117
hi PreCondit    guifg=#7dcfff ctermfg=117

hi Type         guifg=#2ac3de ctermfg=44
hi StorageClass guifg=#bb9af7 ctermfg=141
hi Structure    guifg=#2ac3de ctermfg=44
hi Typedef      guifg=#2ac3de ctermfg=44

hi Special      guifg=#7dcfff ctermfg=117
hi SpecialChar  guifg=#ff9e64 ctermfg=209
hi Tag          guifg=#f7768e ctermfg=204
hi Delimiter    guifg=#d4d4d4 ctermfg=252
hi SpecialComment guifg=#565f89 ctermfg=60 gui=italic cterm=italic
hi Debug        guifg=#f7768e ctermfg=204

hi Underlined   guifg=#7aa2f7 ctermfg=111 gui=underline cterm=underline
hi Ignore       guifg=#3b3b5c ctermfg=237
hi Error        guifg=#f7768e guibg=#2e1a1a ctermfg=204 ctermbg=52 gui=bold cterm=bold
hi Todo         guifg=#e0af68 guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold

" ============================================================================
" Markdown-specific
" ============================================================================
" Headers - using a gradient from bright to softer purple
hi markdownH1           guifg=#bb9af7 ctermfg=141 gui=bold cterm=bold
hi markdownH2           guifg=#9d7cd8 ctermfg=140 gui=bold cterm=bold
hi markdownH3           guifg=#7aa2f7 ctermfg=111 gui=bold cterm=bold
hi markdownH4           guifg=#7dcfff ctermfg=117 gui=bold cterm=bold
hi markdownH5           guifg=#2ac3de ctermfg=44 gui=bold cterm=bold
hi markdownH6           guifg=#73daca ctermfg=79 gui=bold cterm=bold
hi markdownHeadingDelimiter guifg=#565f89 ctermfg=60 gui=bold cterm=bold
hi markdownHeadingRule  guifg=#565f89 ctermfg=60

" Emphasis and formatting
hi markdownBold         guifg=#e0af68 ctermfg=179 gui=bold cterm=bold
hi markdownItalic       guifg=#e0af68 ctermfg=179 gui=italic cterm=italic
hi markdownBoldItalic   guifg=#e0af68 ctermfg=179 gui=bold,italic cterm=bold,italic
hi markdownStrike       guifg=#565f89 ctermfg=60 gui=strikethrough

" Code
hi markdownCode         guifg=#9ece6a guibg=#252540 ctermfg=149 ctermbg=235
hi markdownCodeBlock    guifg=#9ece6a guibg=#252540 ctermfg=149 ctermbg=235
hi markdownCodeDelimiter guifg=#565f89 guibg=#252540 ctermfg=60 ctermbg=235

" Links and references
hi markdownUrl          guifg=#7aa2f7 ctermfg=111 gui=underline cterm=underline
hi markdownUrlTitle     guifg=#9ece6a ctermfg=149
hi markdownLink         guifg=#7dcfff ctermfg=117
hi markdownLinkText     guifg=#7dcfff ctermfg=117
hi markdownLinkDelimiter guifg=#565f89 ctermfg=60
hi markdownIdDeclaration guifg=#7aa2f7 ctermfg=111
hi markdownId           guifg=#7aa2f7 ctermfg=111
hi markdownAutomaticLink guifg=#7aa2f7 ctermfg=111 gui=underline cterm=underline

" Lists
hi markdownListMarker   guifg=#ff9e64 ctermfg=209 gui=bold cterm=bold
hi markdownOrderedListMarker guifg=#ff9e64 ctermfg=209 gui=bold cterm=bold

" Blockquotes
hi markdownBlockquote   guifg=#565f89 ctermfg=60 gui=italic cterm=italic

" Rules/dividers
hi markdownRule         guifg=#3b3b5c ctermfg=237

" Misc
hi markdownEscape       guifg=#ff9e64 ctermfg=209
hi markdownError        guifg=#f7768e ctermfg=204

" HTML in markdown
hi markdownLineBreak    guibg=#3b3b5c ctermbg=237

" ============================================================================
" Text file enhancements (for .txt files)
" ============================================================================
" These use general highlighting that makes text files more readable
" Note: Plain text files have minimal syntax, but we enhance readability

" For plugins like vim-textobj or custom text syntax
hi txtURL           guifg=#7aa2f7 ctermfg=111 gui=underline cterm=underline
hi txtEmailAddr     guifg=#7aa2f7 ctermfg=111 gui=underline cterm=underline
hi txtNumber        guifg=#ff9e64 ctermfg=209
hi txtTodo          guifg=#e0af68 guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold
hi txtNote          guifg=#7aa2f7 guibg=NONE ctermfg=111 ctermbg=NONE gui=bold cterm=bold
hi txtFixme         guifg=#f7768e guibg=NONE ctermfg=204 ctermbg=NONE gui=bold cterm=bold
hi txtWarning       guifg=#e0af68 guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold

" Common text patterns (if using appropriate syntax plugin)
hi txtBullet        guifg=#ff9e64 ctermfg=209
hi txtQuote         guifg=#9ece6a ctermfg=149 gui=italic cterm=italic
hi txtEmphasis      guifg=#e0af68 ctermfg=179 gui=italic cterm=italic
hi txtBoldText      guifg=#e0af68 ctermfg=179 gui=bold cterm=bold
hi txtHeader        guifg=#bb9af7 ctermfg=141 gui=bold cterm=bold
hi txtSection       guifg=#7aa2f7 ctermfg=111 gui=bold cterm=bold

" ============================================================================
" Org-mode (if using vim-orgmode or similar)
" ============================================================================
hi orgHeadingLevel1 guifg=#bb9af7 ctermfg=141 gui=bold cterm=bold
hi orgHeadingLevel2 guifg=#9d7cd8 ctermfg=140 gui=bold cterm=bold
hi orgHeadingLevel3 guifg=#7aa2f7 ctermfg=111 gui=bold cterm=bold
hi orgHeadingLevel4 guifg=#7dcfff ctermfg=117 gui=bold cterm=bold
hi orgTodo          guifg=#f7768e ctermfg=204 gui=bold cterm=bold
hi orgDone          guifg=#9ece6a ctermfg=149 gui=bold cterm=bold
hi orgTag           guifg=#e0af68 ctermfg=179
hi orgLink          guifg=#7aa2f7 ctermfg=111 gui=underline cterm=underline
hi orgCode          guifg=#9ece6a guibg=#252540 ctermfg=149 ctermbg=235
hi orgVerbatim      guifg=#9ece6a guibg=#252540 ctermfg=149 ctermbg=235
hi orgBlockDelimiter guifg=#565f89 ctermfg=60
hi orgTable         guifg=#d4d4d4 ctermfg=252
hi orgTableHeader   guifg=#7dcfff ctermfg=117 gui=bold cterm=bold
hi orgDate          guifg=#2ac3de ctermfg=44
hi orgPriority      guifg=#ff9e64 ctermfg=209 gui=bold cterm=bold

" ============================================================================
" reStructuredText
" ============================================================================
hi rstSections      guifg=#bb9af7 ctermfg=141 gui=bold cterm=bold
hi rstEmphasis      guifg=#e0af68 ctermfg=179 gui=italic cterm=italic
hi rstStrongEmphasis guifg=#e0af68 ctermfg=179 gui=bold cterm=bold
hi rstInterpretedText guifg=#7dcfff ctermfg=117
hi rstInlineLiteral guifg=#9ece6a guibg=#252540 ctermfg=149 ctermbg=235
hi rstLiteralBlock  guifg=#9ece6a guibg=#252540 ctermfg=149 ctermbg=235
hi rstQuotedLiteralBlock guifg=#9ece6a guibg=#252540 ctermfg=149 ctermbg=235
hi rstExDirective   guifg=#bb9af7 ctermfg=141
hi rstDirective     guifg=#bb9af7 ctermfg=141
hi rstHyperlinkTarget guifg=#7aa2f7 ctermfg=111 gui=underline cterm=underline
hi rstExplicitMarkup guifg=#565f89 ctermfg=60
hi rstComment       guifg=#565f89 ctermfg=60 gui=italic cterm=italic
hi rstFootnote      guifg=#7dcfff ctermfg=117
hi rstCitation      guifg=#7dcfff ctermfg=117
hi rstTodo          guifg=#e0af68 guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold

" ============================================================================
" AsciiDoc
" ============================================================================
hi asciidocTitle    guifg=#bb9af7 ctermfg=141 gui=bold cterm=bold
hi asciidocH1       guifg=#bb9af7 ctermfg=141 gui=bold cterm=bold
hi asciidocH2       guifg=#9d7cd8 ctermfg=140 gui=bold cterm=bold
hi asciidocH3       guifg=#7aa2f7 ctermfg=111 gui=bold cterm=bold
hi asciidocH4       guifg=#7dcfff ctermfg=117 gui=bold cterm=bold
hi asciidocListBullet guifg=#ff9e64 ctermfg=209
hi asciidocListNumber guifg=#ff9e64 ctermfg=209
hi asciidocQuotedBold guifg=#e0af68 ctermfg=179 gui=bold cterm=bold
hi asciidocQuotedEmphasis guifg=#e0af68 ctermfg=179 gui=italic cterm=italic
hi asciidocQuotedMonospaced guifg=#9ece6a guibg=#252540 ctermfg=149 ctermbg=235
hi asciidocURL      guifg=#7aa2f7 ctermfg=111 gui=underline cterm=underline
hi asciidocEmail    guifg=#7aa2f7 ctermfg=111 gui=underline cterm=underline
hi asciidocAdmonition guifg=#e0af68 ctermfg=179 gui=bold cterm=bold
hi asciidocBlockTitle guifg=#7dcfff ctermfg=117 gui=bold cterm=bold
hi asciidocComment  guifg=#565f89 ctermfg=60 gui=italic cterm=italic

" ============================================================================
" YAML (often used with markdown frontmatter)
" ============================================================================
hi yamlKey          guifg=#7dcfff ctermfg=117
hi yamlAnchor       guifg=#ff9e64 ctermfg=209
hi yamlAlias        guifg=#ff9e64 ctermfg=209
hi yamlDocumentHeader guifg=#bb9af7 ctermfg=141
hi yamlBlockMappingKey guifg=#7dcfff ctermfg=117
hi yamlKeyValueDelimiter guifg=#89ddff ctermfg=117
hi yamlFlowString   guifg=#9ece6a ctermfg=149
hi yamlFlowStringDelimiter guifg=#9ece6a ctermfg=149
hi yamlBlockCollectionItemStart guifg=#89ddff ctermfg=117

" ============================================================================
" TOML (often used in static site generators)
" ============================================================================
hi tomlTable        guifg=#7aa2f7 ctermfg=111 gui=bold cterm=bold
hi tomlTableArray   guifg=#7aa2f7 ctermfg=111 gui=bold cterm=bold
hi tomlKey          guifg=#7dcfff ctermfg=117
hi tomlKeyDq        guifg=#7dcfff ctermfg=117
hi tomlKeySq        guifg=#7dcfff ctermfg=117
hi tomlString       guifg=#9ece6a ctermfg=149
hi tomlInteger      guifg=#ff9e64 ctermfg=209
hi tomlFloat        guifg=#ff9e64 ctermfg=209
hi tomlBoolean      guifg=#ff9e64 ctermfg=209
hi tomlDate         guifg=#2ac3de ctermfg=44
hi tomlComment      guifg=#565f89 ctermfg=60 gui=italic cterm=italic

" ============================================================================
" JSON / JSONL
" ============================================================================
hi jsonKeyword        guifg=#7dcfff ctermfg=117
hi jsonKey            guifg=#7dcfff ctermfg=117
hi jsonString         guifg=#9ece6a ctermfg=149
hi jsonNumber         guifg=#ff9e64 ctermfg=209
hi jsonBoolean        guifg=#ff9e64 ctermfg=209
hi jsonNull           guifg=#ff9e64 ctermfg=209
hi jsonBraces         guifg=#d4d4d4 ctermfg=252
hi jsonFold           guifg=#7aa2f7 ctermfg=111
hi jsonQuote          guifg=#565f89 ctermfg=60
hi jsonNoise          guifg=#565f89 ctermfg=60
hi jsonKeywordMatch   guifg=#bb9af7 ctermfg=141
hi jsonCommentError   guifg=#f7768e ctermfg=204
hi jsonSemicolonError guifg=#f7768e ctermfg=204
hi jsonTrailingCommaError guifg=#f7768e ctermfg=204
hi jsonMissingCommaError  guifg=#f7768e ctermfg=204
hi jsonStringSQError  guifg=#f7768e ctermfg=204
hi jsonNoQuotesError  guifg=#f7768e ctermfg=204
hi jsonNumError       guifg=#f7768e ctermfg=204

" For vim-json plugin (more detailed highlighting)
hi jsonKeywordRegion  guifg=#7dcfff ctermfg=117
hi jsonStringMatch    guifg=#9ece6a ctermfg=149
hi jsonEscape         guifg=#ff9e64 ctermfg=209

" JSON5 support (if using json5.vim or similar)
hi json5Key           guifg=#7dcfff ctermfg=117
hi json5String        guifg=#9ece6a ctermfg=149
hi json5Number        guifg=#ff9e64 ctermfg=209
hi json5Boolean       guifg=#ff9e64 ctermfg=209
hi json5Null          guifg=#ff9e64 ctermfg=209
hi json5Comment       guifg=#565f89 ctermfg=60 gui=italic cterm=italic
hi json5LineComment   guifg=#565f89 ctermfg=60 gui=italic cterm=italic
hi json5Noise         guifg=#565f89 ctermfg=60

" ============================================================================
" Python-specific
" ============================================================================
hi pythonBuiltin      guifg=#2ac3de ctermfg=44
hi pythonBuiltinFunc  guifg=#7aa2f7 ctermfg=111
hi pythonBuiltinObj   guifg=#2ac3de ctermfg=44
hi pythonClass        guifg=#2ac3de ctermfg=44 gui=bold cterm=bold
hi pythonClassVar     guifg=#f7768e ctermfg=204
hi pythonDecorator    guifg=#e0af68 ctermfg=179
hi pythonDecoratorName guifg=#e0af68 ctermfg=179
hi pythonDottedName   guifg=#e0af68 ctermfg=179
hi pythonException    guifg=#f7768e ctermfg=204
hi pythonExClass      guifg=#f7768e ctermfg=204
hi pythonFunction     guifg=#7aa2f7 ctermfg=111 gui=bold cterm=bold
hi pythonImport       guifg=#bb9af7 ctermfg=141
hi pythonInclude      guifg=#bb9af7 ctermfg=141
hi pythonOperator     guifg=#bb9af7 ctermfg=141
hi pythonRawString    guifg=#9ece6a ctermfg=149
hi pythonRepeat       guifg=#bb9af7 ctermfg=141
hi pythonSelf         guifg=#f7768e ctermfg=204 gui=italic cterm=italic
hi pythonStatement    guifg=#bb9af7 ctermfg=141
hi pythonStrFormat    guifg=#7dcfff ctermfg=117
hi pythonStrFormatting guifg=#7dcfff ctermfg=117
hi pythonStrInterpRegion guifg=#7dcfff ctermfg=117
hi pythonStrTemplate  guifg=#7dcfff ctermfg=117
hi pythonTripleQuotes guifg=#9ece6a ctermfg=149
hi pythonDocstring    guifg=#565f89 ctermfg=60 gui=italic cterm=italic

" f-string interpolation
hi pythonFString      guifg=#9ece6a ctermfg=149
hi pythonBytesEscape  guifg=#ff9e64 ctermfg=209

" ============================================================================
" Shell/Bash-specific
" ============================================================================
hi shVariable       guifg=#7dcfff ctermfg=117
hi shShellVariables guifg=#7dcfff ctermfg=117
hi shDeref          guifg=#7dcfff ctermfg=117
hi shDerefSimple    guifg=#7dcfff ctermfg=117
hi shDerefVar       guifg=#7dcfff ctermfg=117
hi shCommandSub     guifg=#d4d4d4 ctermfg=252
hi shFunction       guifg=#7aa2f7 ctermfg=111 gui=bold cterm=bold
hi shFunctionKey    guifg=#bb9af7 ctermfg=141
hi shStatement      guifg=#bb9af7 ctermfg=141
hi shConditional    guifg=#bb9af7 ctermfg=141
hi shLoop           guifg=#bb9af7 ctermfg=141
hi shSet            guifg=#7aa2f7 ctermfg=111
hi shSetList        guifg=#d4d4d4 ctermfg=252
hi shOption         guifg=#ff9e64 ctermfg=209
hi shOperator       guifg=#89ddff ctermfg=117
hi shArithmetic     guifg=#ff9e64 ctermfg=209
hi shTestOpr        guifg=#89ddff ctermfg=117
hi shSnglCase       guifg=#bb9af7 ctermfg=141
hi shCaseBar        guifg=#89ddff ctermfg=117
hi shCaseIn         guifg=#bb9af7 ctermfg=141
hi shCaseCommandSub guifg=#d4d4d4 ctermfg=252
hi shCmdSubRegion   guifg=#d4d4d4 ctermfg=252
hi shQuote          guifg=#9ece6a ctermfg=149
hi shSingleQuote    guifg=#9ece6a ctermfg=149
hi shDoubleQuote    guifg=#9ece6a ctermfg=149
hi shSpecial        guifg=#ff9e64 ctermfg=209
hi shEscape         guifg=#ff9e64 ctermfg=209
hi shCtrlSeq        guifg=#ff9e64 ctermfg=209
hi shHereDoc        guifg=#9ece6a ctermfg=149
hi shRedir          guifg=#89ddff ctermfg=117
hi shCmdParenRegion guifg=#d4d4d4 ctermfg=252

" Zsh additions
hi zshVariableDef   guifg=#7dcfff ctermfg=117
hi zshSubst         guifg=#7dcfff ctermfg=117
hi zshSubstDelim    guifg=#89ddff ctermfg=117
hi zshFunction      guifg=#7aa2f7 ctermfg=111 gui=bold cterm=bold

" ============================================================================
" Git/Fugitive
" ============================================================================
hi gitcommitSummary   guifg=#9ece6a ctermfg=149
hi gitcommitOverflow  guifg=#f7768e ctermfg=204
hi gitcommitHeader    guifg=#bb9af7 ctermfg=141
hi gitcommitSelectedType guifg=#7aa2f7 ctermfg=111
hi gitcommitSelectedFile guifg=#9ece6a ctermfg=149

" ============================================================================
" Treesitter (if available)
" ============================================================================
if has('nvim')
  hi @variable          guifg=#d4d4d4 ctermfg=252
  hi @variable.builtin  guifg=#f7768e ctermfg=204
  hi @constant          guifg=#ff9e64 ctermfg=209
  hi @constant.builtin  guifg=#ff9e64 ctermfg=209
  hi @function          guifg=#7aa2f7 ctermfg=111
  hi @function.builtin  guifg=#7aa2f7 ctermfg=111
  hi @function.call     guifg=#7aa2f7 ctermfg=111
  hi @method            guifg=#7aa2f7 ctermfg=111
  hi @method.call       guifg=#7aa2f7 ctermfg=111
  hi @keyword           guifg=#bb9af7 ctermfg=141
  hi @keyword.function  guifg=#bb9af7 ctermfg=141
  hi @keyword.return    guifg=#bb9af7 ctermfg=141
  hi @keyword.operator  guifg=#89ddff ctermfg=117
  hi @string            guifg=#9ece6a ctermfg=149
  hi @string.escape     guifg=#ff9e64 ctermfg=209
  hi @type              guifg=#2ac3de ctermfg=44
  hi @type.builtin      guifg=#2ac3de ctermfg=44
  hi @parameter         guifg=#e0af68 ctermfg=179
  hi @property          guifg=#7dcfff ctermfg=117
  hi @field             guifg=#7dcfff ctermfg=117
  hi @attribute         guifg=#e0af68 ctermfg=179
  hi @punctuation.bracket guifg=#d4d4d4 ctermfg=252
  hi @punctuation.delimiter guifg=#d4d4d4 ctermfg=252
  hi @comment           guifg=#565f89 ctermfg=60 gui=italic cterm=italic
  hi @constructor       guifg=#2ac3de ctermfg=44
  hi @namespace         guifg=#7dcfff ctermfg=117

  " Python-specific treesitter
  hi @variable.python   guifg=#d4d4d4 ctermfg=252
  hi @type.python       guifg=#2ac3de ctermfg=44
  hi @decorator         guifg=#e0af68 ctermfg=179

  " Bash-specific treesitter
  hi @variable.bash     guifg=#7dcfff ctermfg=117
  hi @function.bash     guifg=#7aa2f7 ctermfg=111

  " Markdown-specific treesitter
  hi @markup.heading.1.markdown guifg=#bb9af7 ctermfg=141 gui=bold cterm=bold
  hi @markup.heading.2.markdown guifg=#9d7cd8 ctermfg=140 gui=bold cterm=bold
  hi @markup.heading.3.markdown guifg=#7aa2f7 ctermfg=111 gui=bold cterm=bold
  hi @markup.heading.4.markdown guifg=#7dcfff ctermfg=117 gui=bold cterm=bold
  hi @markup.heading.5.markdown guifg=#2ac3de ctermfg=44 gui=bold cterm=bold
  hi @markup.heading.6.markdown guifg=#73daca ctermfg=79 gui=bold cterm=bold
  hi @markup.strong     guifg=#e0af68 ctermfg=179 gui=bold cterm=bold
  hi @markup.italic     guifg=#e0af68 ctermfg=179 gui=italic cterm=italic
  hi @markup.strikethrough guifg=#565f89 ctermfg=60 gui=strikethrough
  hi @markup.link       guifg=#7dcfff ctermfg=117
  hi @markup.link.url   guifg=#7aa2f7 ctermfg=111 gui=underline cterm=underline
  hi @markup.link.label guifg=#7dcfff ctermfg=117
  hi @markup.raw        guifg=#9ece6a guibg=#252540 ctermfg=149 ctermbg=235
  hi @markup.raw.block  guifg=#9ece6a guibg=#252540 ctermfg=149 ctermbg=235
  hi @markup.list       guifg=#ff9e64 ctermfg=209
  hi @markup.quote      guifg=#565f89 ctermfg=60 gui=italic cterm=italic
  hi @punctuation.special.markdown guifg=#565f89 ctermfg=60

  " YAML treesitter
  hi @field.yaml        guifg=#7dcfff ctermfg=117
  hi @string.yaml       guifg=#9ece6a ctermfg=149

  " TOML treesitter
  hi @property.toml     guifg=#7dcfff ctermfg=117

  " JSON treesitter
  hi @label.json        guifg=#7dcfff ctermfg=117
  hi @string.json       guifg=#9ece6a ctermfg=149
  hi @number.json       guifg=#ff9e64 ctermfg=209
  hi @boolean.json      guifg=#ff9e64 ctermfg=209
  hi @constant.builtin.json guifg=#ff9e64 ctermfg=209
endif

" ============================================================================
" LSP Diagnostics
" ============================================================================
hi DiagnosticError guifg=#f7768e ctermfg=204
hi DiagnosticWarn  guifg=#e0af68 ctermfg=179
hi DiagnosticInfo  guifg=#7aa2f7 ctermfg=111
hi DiagnosticHint  guifg=#2ac3de ctermfg=44
hi DiagnosticUnderlineError guisp=#f7768e gui=undercurl cterm=undercurl
hi DiagnosticUnderlineWarn  guisp=#e0af68 gui=undercurl cterm=undercurl
hi DiagnosticUnderlineInfo  guisp=#7aa2f7 gui=undercurl cterm=undercurl
hi DiagnosticUnderlineHint  guisp=#2ac3de gui=undercurl cterm=undercurl

" ============================================================================
" Neovim specific
" ============================================================================
if has('nvim')
  hi NormalFloat  guifg=#d4d4d4 guibg=#2a2a4a ctermfg=252 ctermbg=236
  hi FloatBorder  guifg=#565f89 guibg=#2a2a4a ctermfg=60 ctermbg=236
  hi WinSeparator guifg=#3b3b5c guibg=#1a1a2e ctermfg=237 ctermbg=234
endif

" vim: set sw=2 ts=2 et:
