local M = {}

function M.load(style)
	style = style or vim.o.background or "dark"
	require("oc.colors").setup({ style = style })
	local colors = require("oc.colors").get()
	local config = require("oc.config").options
	local highlights = {}

	-- Transparent background helper
	local bg = config.transparent and "NONE" or colors.background
	local bg_panel = config.transparent and "NONE" or colors.backgroundPanel

	-- Editor UI
	highlights.Normal = { fg = colors.text, bg = bg }
	highlights.NormalFloat = { fg = colors.text, bg = bg_panel }
	highlights.NormalSB = { fg = colors.text, bg = bg_panel }
	highlights.NormalNC = { fg = colors.text, bg = bg }
	highlights.SignColumn = { fg = colors.textMuted, bg = bg }
	highlights.SignColumnSB = { fg = colors.textMuted, bg = bg_panel }
	highlights.EndOfBuffer = { fg = bg }
	highlights.Cursor = { fg = colors.background, bg = colors.text }
	highlights.lCursor = { fg = colors.background, bg = colors.text }
	highlights.CursorIM = { fg = colors.background, bg = colors.text }
	highlights.CursorLine = { bg = colors.backgroundElement }
	highlights.CursorLineNr = { fg = colors.primary, bg = config.transparent and "NONE" or nil, bold = true }
	highlights.CursorColumn = { bg = colors.backgroundElement }
	highlights.ColorColumn = { bg = colors.backgroundElement }
	highlights.LineNr = { fg = colors.textMuted, bg = bg }
	highlights.Visual = { bg = colors.borderActive }
	highlights.VisualNOS = { bg = colors.borderActive }
	highlights.Search = { fg = colors.background, bg = colors.warning }
	highlights.IncSearch = { fg = colors.background, bg = colors.primary }
	highlights.CurSearch = { fg = colors.background, bg = colors.primary }
	highlights.Substitute = { fg = colors.background, bg = colors.error }
	highlights.MatchParen = { fg = colors.warning, bold = true }
	highlights.ModeMsg = { fg = colors.text, bold = true }
	highlights.MsgArea = { fg = colors.text }
	highlights.MsgSeparator = { fg = colors.border }
	highlights.MoreMsg = { fg = colors.info }
	highlights.Question = { fg = colors.info }
	highlights.ErrorMsg = { fg = colors.error }
	highlights.WarningMsg = { fg = colors.warning }
	highlights.Directory = { fg = colors.secondary }
	highlights.Title = { fg = colors.primary, bold = true }
	highlights.Conceal = { fg = colors.textMuted }
	highlights.NonText = { fg = colors.borderSubtle }
	highlights.SpecialKey = { fg = colors.borderSubtle }
	highlights.Whitespace = { fg = colors.borderSubtle }
	highlights.Folded = { fg = colors.textMuted, bg = colors.backgroundElement }
	highlights.FoldColumn = { fg = colors.textMuted, bg = bg }
	highlights.DiffAdd = { bg = colors.diffAddedBg }
	highlights.DiffChange = { bg = colors.diffContextBg }
	highlights.DiffDelete = { bg = colors.diffRemovedBg }
	highlights.DiffText = { bg = colors.diffAddedBg }
	highlights.diffAdded = { fg = colors.diffAdded }
	highlights.diffRemoved = { fg = colors.diffRemoved }
	highlights.diffChanged = { fg = colors.diffContext }
	highlights.diffOldFile = { fg = colors.diffRemoved }
	highlights.diffNewFile = { fg = colors.diffAdded }
	highlights.diffFile = { fg = colors.secondary }
	highlights.diffLine = { fg = colors.textMuted }
	highlights.diffIndexLine = { fg = colors.accent }
	highlights.Pmenu = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.PmenuSel = { fg = colors.text, bg = colors.borderActive }
	highlights.PmenuSbar = { bg = colors.backgroundElement }
	highlights.PmenuThumb = { bg = colors.border }
	highlights.WildMenu = { fg = colors.text, bg = colors.borderActive }
	highlights.TabLine = { fg = colors.textMuted, bg = colors.backgroundPanel }
	highlights.TabLineFill = { bg = colors.backgroundPanel }
	highlights.TabLineSel = { fg = colors.text, bg = colors.background }
	highlights.StatusLine = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.StatusLineNC = { fg = colors.textMuted, bg = colors.backgroundPanel }
	highlights.WinBar = { fg = colors.text, bg = colors.background }
	highlights.WinBarNC = { fg = colors.textMuted, bg = colors.background }
	highlights.WinSeparator = { fg = colors.border }
	highlights.VertSplit = { fg = colors.border }
	highlights.SpellBad = { undercurl = true, sp = colors.error }
	highlights.SpellCap = { undercurl = true, sp = colors.warning }
	highlights.SpellLocal = { undercurl = true, sp = colors.info }
	highlights.SpellRare = { undercurl = true, sp = colors.accent }
	highlights.FloatBorder = { fg = colors.border, bg = colors.backgroundPanel }
	highlights.FloatTitle = { fg = colors.primary, bg = colors.backgroundPanel }

	-- Syntax
	highlights.Comment = vim.tbl_extend("force", { fg = colors.syntaxComment }, config.styles.comments)
	highlights.Constant = { fg = colors.syntaxNumber }
	highlights.String = { fg = colors.syntaxString }
	highlights.Character = { fg = colors.syntaxString }
	highlights.Number = { fg = colors.syntaxNumber }
	highlights.Boolean = { fg = colors.syntaxNumber }
	highlights.Float = { fg = colors.syntaxNumber }
	highlights.Identifier = vim.tbl_extend("force", { fg = colors.syntaxVariable }, config.styles.variables)
	highlights.Function = vim.tbl_extend("force", { fg = colors.syntaxFunction }, config.styles.functions)
	highlights.Statement = { fg = colors.syntaxKeyword }
	highlights.Conditional = vim.tbl_extend("force", { fg = colors.syntaxKeyword }, config.styles.keywords)
	highlights.Repeat = vim.tbl_extend("force", { fg = colors.syntaxKeyword }, config.styles.keywords)
	highlights.Label = { fg = colors.syntaxKeyword }
	highlights.Operator = { fg = colors.syntaxOperator }
	highlights.Keyword = vim.tbl_extend("force", { fg = colors.syntaxKeyword }, config.styles.keywords)
	highlights.Exception = { fg = colors.syntaxKeyword }
	highlights.PreProc = { fg = colors.syntaxKeyword }
	highlights.Include = { fg = colors.syntaxKeyword }
	highlights.Define = { fg = colors.syntaxKeyword }
	highlights.Macro = { fg = colors.syntaxFunction }
	highlights.PreCondit = { fg = colors.syntaxKeyword }
	highlights.Type = { fg = colors.syntaxType }
	highlights.StorageClass = { fg = colors.syntaxKeyword }
	highlights.Structure = { fg = colors.syntaxType }
	highlights.Typedef = { fg = colors.syntaxType }
	highlights.Special = { fg = colors.primary }
	highlights.SpecialChar = { fg = colors.primary }
	highlights.Tag = { fg = colors.syntaxKeyword }
	highlights.Delimiter = { fg = colors.syntaxPunctuation }
	highlights.SpecialComment = { fg = colors.info }
	highlights.Debug = { fg = colors.warning }
	highlights.Underlined = { underline = true }
	highlights.Ignore = { fg = colors.textMuted }
	highlights.Error = { fg = colors.error }
	highlights.Todo = { fg = colors.background, bg = colors.info, bold = true }

	-- Diagnostics
	highlights.DiagnosticError = { fg = colors.error }
	highlights.DiagnosticWarn = { fg = colors.warning }
	highlights.DiagnosticInfo = { fg = colors.info }
	highlights.DiagnosticHint = { fg = colors.success }
	highlights.DiagnosticOk = { fg = colors.success }
	highlights.DiagnosticVirtualTextError = { fg = colors.error, bg = colors.backgroundElement }
	highlights.DiagnosticVirtualTextWarn = { fg = colors.warning, bg = colors.backgroundElement }
	highlights.DiagnosticVirtualTextInfo = { fg = colors.info, bg = colors.backgroundElement }
	highlights.DiagnosticVirtualTextHint = { fg = colors.success, bg = colors.backgroundElement }
	highlights.DiagnosticVirtualTextOk = { fg = colors.success, bg = colors.backgroundElement }
	highlights.DiagnosticUnderlineError = { undercurl = true, sp = colors.error }
	highlights.DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning }
	highlights.DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info }
	highlights.DiagnosticUnderlineHint = { undercurl = true, sp = colors.success }
	highlights.DiagnosticUnderlineOk = { undercurl = true, sp = colors.success }
	highlights.DiagnosticFloatingError = { fg = colors.error }
	highlights.DiagnosticFloatingWarn = { fg = colors.warning }
	highlights.DiagnosticFloatingInfo = { fg = colors.info }
	highlights.DiagnosticFloatingHint = { fg = colors.success }
	highlights.DiagnosticFloatingOk = { fg = colors.success }
	highlights.DiagnosticSignError = { fg = colors.error }
	highlights.DiagnosticSignWarn = { fg = colors.warning }
	highlights.DiagnosticSignInfo = { fg = colors.info }
	highlights.DiagnosticSignHint = { fg = colors.success }
	highlights.DiagnosticSignOk = { fg = colors.success }

	-- LSP
	highlights.LspReferenceText = { bg = colors.backgroundElement }
	highlights.LspReferenceRead = { bg = colors.backgroundElement }
	highlights.LspReferenceWrite = { bg = colors.backgroundElement }
	highlights.LspSignatureActiveParameter = { fg = colors.primary, bold = true }
	highlights.LspCodeLens = { fg = colors.textMuted }
	highlights.LspCodeLensSeparator = { fg = colors.border }
	highlights.LspInlayHint = { fg = colors.textMuted, bg = colors.backgroundElement }

	-- Treesitter
	highlights["@variable"] = vim.tbl_extend("force", { fg = colors.syntaxVariable }, config.styles.variables)
	highlights["@variable.builtin"] = { fg = colors.syntaxVariable, italic = true }
	highlights["@variable.parameter"] = { fg = colors.syntaxVariable }
	highlights["@variable.member"] = { fg = colors.syntaxVariable }
	highlights["@constant"] = { fg = colors.syntaxNumber }
	highlights["@constant.builtin"] = { fg = colors.syntaxNumber, italic = true }
	highlights["@constant.macro"] = { fg = colors.syntaxNumber }
	highlights["@module"] = { fg = colors.syntaxType }
	highlights["@module.builtin"] = { fg = colors.syntaxType, italic = true }
	highlights["@label"] = { fg = colors.syntaxKeyword }
	highlights["@string"] = { fg = colors.syntaxString }
	highlights["@string.documentation"] = { fg = colors.syntaxString }
	highlights["@string.regexp"] = { fg = colors.warning }
	highlights["@string.escape"] = { fg = colors.primary }
	highlights["@string.special"] = { fg = colors.primary }
	highlights["@string.special.symbol"] = { fg = colors.syntaxString }
	highlights["@string.special.url"] = { fg = colors.info, underline = true }
	highlights["@character"] = { fg = colors.syntaxString }
	highlights["@character.special"] = { fg = colors.primary }
	highlights["@boolean"] = { fg = colors.syntaxNumber }
	highlights["@number"] = { fg = colors.syntaxNumber }
	highlights["@number.float"] = { fg = colors.syntaxNumber }
	highlights["@type"] = { fg = colors.syntaxType }
	highlights["@type.builtin"] = { fg = colors.syntaxType, italic = true }
	highlights["@type.definition"] = { fg = colors.syntaxType }
	highlights["@type.qualifier"] = { fg = colors.syntaxKeyword }
	highlights["@attribute"] = { fg = colors.accent }
	highlights["@property"] = { fg = colors.syntaxVariable }
	highlights["@function"] = vim.tbl_extend("force", { fg = colors.syntaxFunction }, config.styles.functions)
	highlights["@function.builtin"] = { fg = colors.syntaxFunction, italic = true }
	highlights["@function.call"] = { fg = colors.syntaxFunction }
	highlights["@function.macro"] = { fg = colors.syntaxFunction }
	highlights["@function.method"] = { fg = colors.syntaxFunction }
	highlights["@function.method.call"] = { fg = colors.syntaxFunction }
	highlights["@constructor"] = { fg = colors.syntaxType }
	highlights["@operator"] = { fg = colors.syntaxOperator }
	highlights["@keyword"] = vim.tbl_extend("force", { fg = colors.syntaxKeyword }, config.styles.keywords)
	highlights["@keyword.coroutine"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.function"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.operator"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.import"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.storage"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.repeat"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.return"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.debug"] = { fg = colors.warning }
	highlights["@keyword.exception"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.conditional"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.conditional.ternary"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.directive"] = { fg = colors.syntaxKeyword }
	highlights["@keyword.directive.define"] = { fg = colors.syntaxKeyword }
	highlights["@punctuation.delimiter"] = { fg = colors.syntaxPunctuation }
	highlights["@punctuation.bracket"] = { fg = colors.syntaxPunctuation }
	highlights["@punctuation.special"] = { fg = colors.primary }
	highlights["@comment"] = vim.tbl_extend("force", { fg = colors.syntaxComment }, config.styles.comments)
	highlights["@comment.documentation"] = { fg = colors.syntaxComment }
	highlights["@comment.error"] = { fg = colors.error }
	highlights["@comment.warning"] = { fg = colors.warning }
	highlights["@comment.todo"] = { fg = colors.info }
	highlights["@comment.note"] = { fg = colors.success }
	highlights["@markup.strong"] = { bold = true }
	highlights["@markup.italic"] = { italic = true }
	highlights["@markup.strikethrough"] = { strikethrough = true }
	highlights["@markup.underline"] = { underline = true }
	highlights["@markup.heading"] = { fg = colors.markdownHeading, bold = true }
	highlights["@markup.heading.1"] = { fg = colors.markdownHeading, bold = true }
	highlights["@markup.heading.2"] = { fg = colors.markdownHeading, bold = true }
	highlights["@markup.heading.3"] = { fg = colors.markdownHeading, bold = true }
	highlights["@markup.heading.4"] = { fg = colors.markdownHeading, bold = true }
	highlights["@markup.heading.5"] = { fg = colors.markdownHeading, bold = true }
	highlights["@markup.heading.6"] = { fg = colors.markdownHeading, bold = true }
	highlights["@markup.quote"] = { fg = colors.markdownBlockQuote, italic = true }
	highlights["@markup.math"] = { fg = colors.secondary }
	highlights["@markup.environment"] = { fg = colors.syntaxKeyword }
	highlights["@markup.link"] = { fg = colors.markdownLink }
	highlights["@markup.link.label"] = { fg = colors.markdownLinkText }
	highlights["@markup.link.url"] = { fg = colors.info, underline = true }
	highlights["@markup.raw"] = { fg = colors.markdownCode }
	highlights["@markup.raw.block"] = { fg = colors.markdownCodeBlock }
	highlights["@markup.list"] = { fg = colors.markdownListItem }
	highlights["@markup.list.checked"] = { fg = colors.success }
	highlights["@markup.list.unchecked"] = { fg = colors.textMuted }
	highlights["@diff.plus"] = { fg = colors.diffAdded }
	highlights["@diff.minus"] = { fg = colors.diffRemoved }
	highlights["@diff.delta"] = { fg = colors.diffContext }
	highlights["@tag"] = { fg = colors.syntaxKeyword }
	highlights["@tag.attribute"] = { fg = colors.syntaxVariable }
	highlights["@tag.delimiter"] = { fg = colors.syntaxPunctuation }

	-- Markdown
	highlights.markdownH1 = { fg = colors.markdownHeading, bold = true }
	highlights.markdownH2 = { fg = colors.markdownHeading, bold = true }
	highlights.markdownH3 = { fg = colors.markdownHeading, bold = true }
	highlights.markdownH4 = { fg = colors.markdownHeading, bold = true }
	highlights.markdownH5 = { fg = colors.markdownHeading, bold = true }
	highlights.markdownH6 = { fg = colors.markdownHeading, bold = true }
	highlights.markdownHeadingDelimiter = { fg = colors.markdownHeading }
	highlights.markdownCode = { fg = colors.markdownCode }
	highlights.markdownCodeBlock = { fg = colors.markdownCodeBlock }
	highlights.markdownCodeDelimiter = { fg = colors.markdownCode }
	highlights.markdownBlockquote = { fg = colors.markdownBlockQuote }
	highlights.markdownListMarker = { fg = colors.markdownListItem }
	highlights.markdownOrderedListMarker = { fg = colors.markdownListEnumeration }
	highlights.markdownRule = { fg = colors.markdownHorizontalRule }
	highlights.markdownLinkText = { fg = colors.markdownLinkText }
	highlights.markdownUrl = { fg = colors.markdownLink, underline = true }
	highlights.markdownLink = { fg = colors.markdownLink }
	highlights.markdownLinkDelimiter = { fg = colors.textMuted }
	highlights.markdownItalic = { fg = colors.markdownEmph, italic = true }
	highlights.markdownBold = { fg = colors.markdownStrong, bold = true }
	highlights.markdownBoldItalic = { fg = colors.markdownStrong, bold = true, italic = true }

	-- nvim-cmp
	highlights.CmpItemAbbr = { fg = colors.text }
	highlights.CmpItemAbbrDeprecated = { fg = colors.textMuted, strikethrough = true }
	highlights.CmpItemAbbrMatch = { fg = colors.primary, bold = true }
	highlights.CmpItemAbbrMatchFuzzy = { fg = colors.primary, bold = true }
	highlights.CmpItemKind = { fg = colors.secondary }
	highlights.CmpItemKindClass = { fg = colors.syntaxType }
	highlights.CmpItemKindColor = { fg = colors.primary }
	highlights.CmpItemKindConstant = { fg = colors.syntaxNumber }
	highlights.CmpItemKindConstructor = { fg = colors.syntaxType }
	highlights.CmpItemKindEnum = { fg = colors.syntaxType }
	highlights.CmpItemKindEnumMember = { fg = colors.syntaxNumber }
	highlights.CmpItemKindEvent = { fg = colors.accent }
	highlights.CmpItemKindField = { fg = colors.syntaxVariable }
	highlights.CmpItemKindFile = { fg = colors.secondary }
	highlights.CmpItemKindFolder = { fg = colors.secondary }
	highlights.CmpItemKindFunction = { fg = colors.syntaxFunction }
	highlights.CmpItemKindInterface = { fg = colors.syntaxType }
	highlights.CmpItemKindKeyword = { fg = colors.syntaxKeyword }
	highlights.CmpItemKindMethod = { fg = colors.syntaxFunction }
	highlights.CmpItemKindModule = { fg = colors.syntaxType }
	highlights.CmpItemKindOperator = { fg = colors.syntaxOperator }
	highlights.CmpItemKindProperty = { fg = colors.syntaxVariable }
	highlights.CmpItemKindReference = { fg = colors.syntaxVariable }
	highlights.CmpItemKindSnippet = { fg = colors.accent }
	highlights.CmpItemKindStruct = { fg = colors.syntaxType }
	highlights.CmpItemKindText = { fg = colors.text }
	highlights.CmpItemKindTypeParameter = { fg = colors.syntaxType }
	highlights.CmpItemKindUnit = { fg = colors.syntaxNumber }
	highlights.CmpItemKindValue = { fg = colors.syntaxNumber }
	highlights.CmpItemKindVariable = { fg = colors.syntaxVariable }
	highlights.CmpItemMenu = { fg = colors.textMuted }

	-- GitSigns
	highlights.GitSignsAdd = { fg = colors.diffAdded }
	highlights.GitSignsChange = { fg = colors.diffContext }
	highlights.GitSignsDelete = { fg = colors.diffRemoved }
	highlights.GitSignsAddNr = { fg = colors.diffAdded }
	highlights.GitSignsChangeNr = { fg = colors.diffContext }
	highlights.GitSignsDeleteNr = { fg = colors.diffRemoved }
	highlights.GitSignsAddLn = { bg = colors.diffAddedBg }
	highlights.GitSignsChangeLn = { bg = colors.diffContextBg }
	highlights.GitSignsDeleteLn = { bg = colors.diffRemovedBg }
	highlights.GitSignsCurrentLineBlame = { fg = colors.textMuted }

	-- NvimTree
	highlights.NvimTreeNormal = { fg = colors.text, bg = bg_panel }
	highlights.NvimTreeNormalNC = { fg = colors.text, bg = bg_panel }
	highlights.NvimTreeRootFolder = { fg = colors.primary, bold = true }
	highlights.NvimTreeFolderName = { fg = colors.secondary }
	highlights.NvimTreeFolderIcon = { fg = colors.secondary }
	highlights.NvimTreeEmptyFolderName = { fg = colors.textMuted }
	highlights.NvimTreeOpenedFolderName = { fg = colors.secondary, bold = true }
	highlights.NvimTreeSymlink = { fg = colors.info }
	highlights.NvimTreeSpecialFile = { fg = colors.primary }
	highlights.NvimTreeImageFile = { fg = colors.accent }
	highlights.NvimTreeIndentMarker = { fg = colors.border }
	highlights.NvimTreeGitDirty = { fg = colors.warning }
	highlights.NvimTreeGitNew = { fg = colors.diffAdded }
	highlights.NvimTreeGitDeleted = { fg = colors.diffRemoved }
	highlights.NvimTreeGitStaged = { fg = colors.success }
	highlights.NvimTreeGitMerge = { fg = colors.warning }
	highlights.NvimTreeGitRenamed = { fg = colors.info }
	highlights.NvimTreeWindowPicker = { fg = colors.background, bg = colors.primary, bold = true }

	-- Neo-tree
	highlights.NeoTreeNormal = { fg = colors.text, bg = bg_panel }
	highlights.NeoTreeNormalNC = { fg = colors.text, bg = bg_panel }
	highlights.NeoTreeRootName = { fg = colors.primary, bold = true }
	highlights.NeoTreeDirectoryName = { fg = colors.secondary }
	highlights.NeoTreeDirectoryIcon = { fg = colors.secondary }
	highlights.NeoTreeFileName = { fg = colors.text }
	highlights.NeoTreeFileIcon = { fg = colors.text }
	highlights.NeoTreeSymbolicLinkTarget = { fg = colors.info }
	highlights.NeoTreeIndentMarker = { fg = colors.border }
	highlights.NeoTreeGitAdded = { fg = colors.diffAdded }
	highlights.NeoTreeGitDeleted = { fg = colors.diffRemoved }
	highlights.NeoTreeGitModified = { fg = colors.warning }
	highlights.NeoTreeGitUntracked = { fg = colors.textMuted }
	highlights.NeoTreeGitIgnored = { fg = colors.textMuted }
	highlights.NeoTreeGitConflict = { fg = colors.error }
	highlights.NeoTreeFloatBorder = { fg = colors.border, bg = colors.backgroundPanel }
	highlights.NeoTreeFloatTitle = { fg = colors.primary, bg = colors.backgroundPanel }

	-- Telescope
	highlights.TelescopeNormal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.TelescopeBorder = { fg = colors.border, bg = colors.backgroundPanel }
	highlights.TelescopeTitle = { fg = colors.primary, bold = true }
	highlights.TelescopePromptNormal = { fg = colors.text, bg = colors.backgroundElement }
	highlights.TelescopePromptBorder = { fg = colors.border, bg = colors.backgroundElement }
	highlights.TelescopePromptTitle = { fg = colors.primary, bg = colors.backgroundElement, bold = true }
	highlights.TelescopePromptPrefix = { fg = colors.primary }
	highlights.TelescopePromptCounter = { fg = colors.textMuted }
	highlights.TelescopeResultsNormal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.TelescopeResultsBorder = { fg = colors.border, bg = colors.backgroundPanel }
	highlights.TelescopeResultsTitle = { fg = colors.primary, bg = colors.backgroundPanel }
	highlights.TelescopePreviewNormal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.TelescopePreviewBorder = { fg = colors.border, bg = colors.backgroundPanel }
	highlights.TelescopePreviewTitle = { fg = colors.primary, bg = colors.backgroundPanel }
	highlights.TelescopeSelection = { fg = colors.text, bg = colors.borderActive }
	highlights.TelescopeSelectionCaret = { fg = colors.primary }
	highlights.TelescopeMultiSelection = { fg = colors.accent }
	highlights.TelescopeMultiIcon = { fg = colors.accent }
	highlights.TelescopeMatching = { fg = colors.primary, bold = true }

	-- Which-key
	highlights.WhichKey = { fg = colors.primary }
	highlights.WhichKeyGroup = { fg = colors.secondary }
	highlights.WhichKeySeparator = { fg = colors.textMuted }
	highlights.WhichKeyDesc = { fg = colors.text }
	highlights.WhichKeyFloat = { bg = colors.backgroundPanel }
	highlights.WhichKeyBorder = { fg = colors.border, bg = colors.backgroundPanel }
	highlights.WhichKeyValue = { fg = colors.textMuted }

	-- Indent Blankline
	highlights.IndentBlanklineChar = { fg = colors.borderSubtle }
	highlights.IndentBlanklineContextChar = { fg = colors.border }
	highlights.IndentBlanklineContextStart = { sp = colors.border, underline = true }
	highlights.IblIndent = { fg = colors.borderSubtle }
	highlights.IblScope = { fg = colors.border }

	-- Dashboard
	highlights.DashboardHeader = { fg = colors.primary }
	highlights.DashboardCenter = { fg = colors.secondary }
	highlights.DashboardShortcut = { fg = colors.accent }
	highlights.DashboardFooter = { fg = colors.textMuted }

	-- Alpha
	highlights.AlphaHeader = { fg = colors.primary }
	highlights.AlphaButtons = { fg = colors.secondary }
	highlights.AlphaShortcut = { fg = colors.accent }
	highlights.AlphaFooter = { fg = colors.textMuted }

	-- Lazy
	highlights.LazyNormal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.LazyButton = { fg = colors.text, bg = colors.backgroundElement }
	highlights.LazyButtonActive = { fg = colors.background, bg = colors.primary }
	highlights.LazyH1 = { fg = colors.background, bg = colors.primary, bold = true }
	highlights.LazyH2 = { fg = colors.primary, bold = true }
	highlights.LazySpecial = { fg = colors.accent }
	highlights.LazyProgressDone = { fg = colors.success }
	highlights.LazyProgressTodo = { fg = colors.textMuted }

	-- Mason
	highlights.MasonNormal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.MasonHeader = { fg = colors.background, bg = colors.primary, bold = true }
	highlights.MasonHeaderSecondary = { fg = colors.background, bg = colors.secondary, bold = true }
	highlights.MasonHighlight = { fg = colors.primary }
	highlights.MasonHighlightBlock = { fg = colors.background, bg = colors.primary }
	highlights.MasonHighlightBlockBold = { fg = colors.background, bg = colors.primary, bold = true }
	highlights.MasonHighlightSecondary = { fg = colors.secondary }
	highlights.MasonMuted = { fg = colors.textMuted }
	highlights.MasonMutedBlock = { fg = colors.textMuted, bg = colors.backgroundElement }

	-- Notify
	highlights.NotifyERRORBorder = { fg = colors.error }
	highlights.NotifyWARNBorder = { fg = colors.warning }
	highlights.NotifyINFOBorder = { fg = colors.info }
	highlights.NotifyDEBUGBorder = { fg = colors.textMuted }
	highlights.NotifyTRACEBorder = { fg = colors.accent }
	highlights.NotifyERRORIcon = { fg = colors.error }
	highlights.NotifyWARNIcon = { fg = colors.warning }
	highlights.NotifyINFOIcon = { fg = colors.info }
	highlights.NotifyDEBUGIcon = { fg = colors.textMuted }
	highlights.NotifyTRACEIcon = { fg = colors.accent }
	highlights.NotifyERRORTitle = { fg = colors.error }
	highlights.NotifyWARNTitle = { fg = colors.warning }
	highlights.NotifyINFOTitle = { fg = colors.info }
	highlights.NotifyDEBUGTitle = { fg = colors.textMuted }
	highlights.NotifyTRACETitle = { fg = colors.accent }
	highlights.NotifyERRORBody = { fg = colors.text }
	highlights.NotifyWARNBody = { fg = colors.text }
	highlights.NotifyINFOBody = { fg = colors.text }
	highlights.NotifyDEBUGBody = { fg = colors.text }
	highlights.NotifyTRACEBody = { fg = colors.text }

	-- Noice
	highlights.NoiceCmdline = { fg = colors.text }
	highlights.NoiceCmdlineIcon = { fg = colors.primary }
	highlights.NoiceCmdlineIconSearch = { fg = colors.warning }
	highlights.NoiceCmdlinePopup = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.NoiceCmdlinePopupBorder = { fg = colors.border }
	highlights.NoiceCmdlinePopupTitle = { fg = colors.primary }
	highlights.NoiceConfirm = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.NoiceConfirmBorder = { fg = colors.border }
	highlights.NoiceCursor = { fg = colors.background, bg = colors.text }
	highlights.NoiceMini = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.NoicePopup = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.NoicePopupBorder = { fg = colors.border }
	highlights.NoicePopupmenu = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.NoicePopupmenuBorder = { fg = colors.border }
	highlights.NoicePopupmenuMatch = { fg = colors.primary, bold = true }
	highlights.NoicePopupmenuSelected = { bg = colors.borderActive }
	highlights.NoiceScrollbar = { bg = colors.backgroundElement }
	highlights.NoiceScrollbarThumb = { bg = colors.border }
	highlights.NoiceVirtualText = { fg = colors.info }

	-- Mini
	highlights.MiniCompletionActiveParameter = { underline = true }
	highlights.MiniCursorword = { bg = colors.backgroundElement }
	highlights.MiniCursorwordCurrent = { bg = colors.backgroundElement }
	highlights.MiniFilesNormal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.MiniFilesBorder = { fg = colors.border, bg = colors.backgroundPanel }
	highlights.MiniFilesTitle = { fg = colors.primary, bg = colors.backgroundPanel }
	highlights.MiniFilesTitleFocused = { fg = colors.primary, bg = colors.backgroundPanel, bold = true }
	highlights.MiniFilesDirectory = { fg = colors.secondary }
	highlights.MiniFilesFile = { fg = colors.text }
	highlights.MiniIndentscopeSymbol = { fg = colors.border }
	highlights.MiniIndentscopePrefix = { nocombine = true }
	highlights.MiniJump = { fg = colors.background, bg = colors.primary }
	highlights.MiniJump2dSpot = { fg = colors.primary, bold = true }
	highlights.MiniJump2dSpotAhead = { fg = colors.info }
	highlights.MiniJump2dSpotUnique = { fg = colors.warning }
	highlights.MiniMapNormal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.MiniMapSymbolCount = { fg = colors.accent }
	highlights.MiniMapSymbolLine = { fg = colors.primary }
	highlights.MiniMapSymbolView = { fg = colors.border }
	highlights.MiniNotifyBorder = { fg = colors.border }
	highlights.MiniNotifyNormal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.MiniNotifyTitle = { fg = colors.primary }
	highlights.MiniOperatorsExchangeFrom = { bg = colors.backgroundElement }
	highlights.MiniPickNormal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.MiniPickBorder = { fg = colors.border, bg = colors.backgroundPanel }
	highlights.MiniPickHeader = { fg = colors.primary }
	highlights.MiniPickMatchCurrent = { bg = colors.borderActive }
	highlights.MiniPickMatchMarked = { fg = colors.accent }
	highlights.MiniPickMatchRanges = { fg = colors.primary }
	highlights.MiniPickPrompt = { fg = colors.primary }
	highlights.MiniStarterCurrent = { nocombine = true }
	highlights.MiniStarterFooter = { fg = colors.textMuted }
	highlights.MiniStarterHeader = { fg = colors.primary }
	highlights.MiniStarterInactive = { fg = colors.textMuted }
	highlights.MiniStarterItem = { fg = colors.text }
	highlights.MiniStarterItemBullet = { fg = colors.border }
	highlights.MiniStarterItemPrefix = { fg = colors.warning }
	highlights.MiniStarterSection = { fg = colors.primary }
	highlights.MiniStarterQuery = { fg = colors.info }
	highlights.MiniStatuslineDevinfo = { fg = colors.text, bg = colors.backgroundElement }
	highlights.MiniStatuslineFileinfo = { fg = colors.text, bg = colors.backgroundElement }
	highlights.MiniStatuslineFilename = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.MiniStatuslineInactive = { fg = colors.textMuted, bg = colors.backgroundPanel }
	highlights.MiniStatuslineModeCommand = { fg = colors.background, bg = colors.warning, bold = true }
	highlights.MiniStatuslineModeInsert = { fg = colors.background, bg = colors.success, bold = true }
	highlights.MiniStatuslineModeNormal = { fg = colors.background, bg = colors.primary, bold = true }
	highlights.MiniStatuslineModeOther = { fg = colors.background, bg = colors.info, bold = true }
	highlights.MiniStatuslineModeReplace = { fg = colors.background, bg = colors.error, bold = true }
	highlights.MiniStatuslineModeVisual = { fg = colors.background, bg = colors.accent, bold = true }
	highlights.MiniSurround = { fg = colors.background, bg = colors.warning }
	highlights.MiniTablineCurrent = { fg = colors.text, bg = colors.background }
	highlights.MiniTablineFill = { bg = colors.backgroundPanel }
	highlights.MiniTablineHidden = { fg = colors.textMuted, bg = colors.backgroundPanel }
	highlights.MiniTablineModifiedCurrent = { fg = colors.warning, bg = colors.background }
	highlights.MiniTablineModifiedHidden = { fg = colors.warning, bg = colors.backgroundPanel }
	highlights.MiniTablineModifiedVisible = { fg = colors.warning, bg = colors.backgroundElement }
	highlights.MiniTablineTabpagesection = { fg = colors.text, bg = colors.backgroundElement }
	highlights.MiniTablineVisible = { fg = colors.text, bg = colors.backgroundElement }
	highlights.MiniTestEmphasis = { bold = true }
	highlights.MiniTestFail = { fg = colors.error, bold = true }
	highlights.MiniTestPass = { fg = colors.success, bold = true }
	highlights.MiniTrailspace = { bg = colors.error }

	-- Trouble
	highlights.TroubleNormal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.TroubleText = { fg = colors.text }
	highlights.TroubleCount = { fg = colors.accent, bg = colors.backgroundElement }
	highlights.TroubleFile = { fg = colors.secondary }
	highlights.TroubleLocation = { fg = colors.textMuted }
	highlights.TroublePreview = { fg = colors.primary }
	highlights.TroubleSource = { fg = colors.textMuted }
	highlights.TroubleFoldIcon = { fg = colors.border }
	highlights.TroubleIndent = { fg = colors.border }

	-- Navic
	highlights.NavicIconsFile = { fg = colors.secondary }
	highlights.NavicIconsModule = { fg = colors.syntaxType }
	highlights.NavicIconsNamespace = { fg = colors.syntaxType }
	highlights.NavicIconsPackage = { fg = colors.syntaxType }
	highlights.NavicIconsClass = { fg = colors.syntaxType }
	highlights.NavicIconsMethod = { fg = colors.syntaxFunction }
	highlights.NavicIconsProperty = { fg = colors.syntaxVariable }
	highlights.NavicIconsField = { fg = colors.syntaxVariable }
	highlights.NavicIconsConstructor = { fg = colors.syntaxType }
	highlights.NavicIconsEnum = { fg = colors.syntaxType }
	highlights.NavicIconsInterface = { fg = colors.syntaxType }
	highlights.NavicIconsFunction = { fg = colors.syntaxFunction }
	highlights.NavicIconsVariable = { fg = colors.syntaxVariable }
	highlights.NavicIconsConstant = { fg = colors.syntaxNumber }
	highlights.NavicIconsString = { fg = colors.syntaxString }
	highlights.NavicIconsNumber = { fg = colors.syntaxNumber }
	highlights.NavicIconsBoolean = { fg = colors.syntaxNumber }
	highlights.NavicIconsArray = { fg = colors.syntaxPunctuation }
	highlights.NavicIconsObject = { fg = colors.syntaxType }
	highlights.NavicIconsKey = { fg = colors.syntaxKeyword }
	highlights.NavicIconsNull = { fg = colors.syntaxNumber }
	highlights.NavicIconsEnumMember = { fg = colors.syntaxNumber }
	highlights.NavicIconsStruct = { fg = colors.syntaxType }
	highlights.NavicIconsEvent = { fg = colors.accent }
	highlights.NavicIconsOperator = { fg = colors.syntaxOperator }
	highlights.NavicIconsTypeParameter = { fg = colors.syntaxType }
	highlights.NavicText = { fg = colors.text }
	highlights.NavicSeparator = { fg = colors.textMuted }

	-- BufferLine
	highlights.BufferLineFill = { bg = colors.backgroundPanel }
	highlights.BufferLineBackground = { fg = colors.textMuted, bg = colors.backgroundPanel }
	highlights.BufferLineBuffer = { fg = colors.textMuted, bg = colors.backgroundPanel }
	highlights.BufferLineBufferSelected = { fg = colors.text, bg = colors.background, bold = true }
	highlights.BufferLineBufferVisible = { fg = colors.text, bg = colors.backgroundElement }
	highlights.BufferLineCloseButton = { fg = colors.textMuted, bg = colors.backgroundPanel }
	highlights.BufferLineCloseButtonSelected = { fg = colors.error, bg = colors.background }
	highlights.BufferLineCloseButtonVisible = { fg = colors.textMuted, bg = colors.backgroundElement }
	highlights.BufferLineIndicatorSelected = { fg = colors.primary, bg = colors.background }
	highlights.BufferLineIndicatorVisible = { fg = colors.border, bg = colors.backgroundElement }
	highlights.BufferLineModified = { fg = colors.warning, bg = colors.backgroundPanel }
	highlights.BufferLineModifiedSelected = { fg = colors.warning, bg = colors.background }
	highlights.BufferLineModifiedVisible = { fg = colors.warning, bg = colors.backgroundElement }
	highlights.BufferLineSeparator = { fg = colors.border, bg = colors.backgroundPanel }
	highlights.BufferLineSeparatorSelected = { fg = colors.border, bg = colors.background }
	highlights.BufferLineSeparatorVisible = { fg = colors.border, bg = colors.backgroundElement }
	highlights.BufferLineTab = { fg = colors.textMuted, bg = colors.backgroundPanel }
	highlights.BufferLineTabSelected = { fg = colors.text, bg = colors.background }
	highlights.BufferLineTabClose = { fg = colors.error, bg = colors.backgroundPanel }

	-- Lualine
	highlights.lualine_a_normal = { fg = colors.background, bg = colors.primary, bold = true }
	highlights.lualine_b_normal = { fg = colors.text, bg = colors.backgroundElement }
	highlights.lualine_c_normal = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.lualine_a_insert = { fg = colors.background, bg = colors.success, bold = true }
	highlights.lualine_b_insert = { fg = colors.text, bg = colors.backgroundElement }
	highlights.lualine_c_insert = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.lualine_a_visual = { fg = colors.background, bg = colors.accent, bold = true }
	highlights.lualine_b_visual = { fg = colors.text, bg = colors.backgroundElement }
	highlights.lualine_c_visual = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.lualine_a_replace = { fg = colors.background, bg = colors.error, bold = true }
	highlights.lualine_b_replace = { fg = colors.text, bg = colors.backgroundElement }
	highlights.lualine_c_replace = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.lualine_a_command = { fg = colors.background, bg = colors.warning, bold = true }
	highlights.lualine_b_command = { fg = colors.text, bg = colors.backgroundElement }
	highlights.lualine_c_command = { fg = colors.text, bg = colors.backgroundPanel }
	highlights.lualine_a_inactive = { fg = colors.textMuted, bg = colors.backgroundPanel }
	highlights.lualine_b_inactive = { fg = colors.textMuted, bg = colors.backgroundPanel }
	highlights.lualine_c_inactive = { fg = colors.textMuted, bg = colors.backgroundPanel }

	-- Leap
	highlights.LeapMatch = { fg = colors.primary, bold = true }
	highlights.LeapLabelPrimary = { fg = colors.background, bg = colors.primary, bold = true }
	highlights.LeapLabelSecondary = { fg = colors.background, bg = colors.accent, bold = true }
	highlights.LeapBackdrop = { fg = colors.textMuted }

	-- Flash
	highlights.FlashMatch = { fg = colors.text, bg = colors.backgroundElement }
	highlights.FlashCurrent = { fg = colors.background, bg = colors.warning }
	highlights.FlashLabel = { fg = colors.background, bg = colors.primary, bold = true }
	highlights.FlashBackdrop = { fg = colors.textMuted }
	highlights.FlashCursor = { reverse = true }

	-- Hop
	highlights.HopNextKey = { fg = colors.primary, bold = true }
	highlights.HopNextKey1 = { fg = colors.info, bold = true }
	highlights.HopNextKey2 = { fg = colors.secondary }
	highlights.HopUnmatched = { fg = colors.textMuted }

	-- Illuminate
	highlights.IlluminatedWordText = { bg = colors.backgroundElement }
	highlights.IlluminatedWordRead = { bg = colors.backgroundElement }
	highlights.IlluminatedWordWrite = { bg = colors.backgroundElement }

	-- Fidget
	highlights.FidgetTitle = { fg = colors.primary }
	highlights.FidgetTask = { fg = colors.textMuted }

	-- Headlines
	highlights.Headline1 = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.Headline2 = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.Headline3 = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.Headline4 = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.Headline5 = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.Headline6 = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.CodeBlock = { bg = colors.backgroundElement }
	highlights.Dash = { fg = colors.markdownHorizontalRule }
	highlights.Quote = { fg = colors.markdownBlockQuote }

	-- Render Markdown
	highlights.RenderMarkdownH1Bg = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.RenderMarkdownH2Bg = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.RenderMarkdownH3Bg = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.RenderMarkdownH4Bg = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.RenderMarkdownH5Bg = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.RenderMarkdownH6Bg = { fg = colors.markdownHeading, bg = colors.backgroundElement, bold = true }
	highlights.RenderMarkdownCode = { bg = colors.backgroundElement }
	highlights.RenderMarkdownCodeInline = { fg = colors.markdownCode }
	highlights.RenderMarkdownBullet = { fg = colors.markdownListItem }
	highlights.RenderMarkdownQuote = { fg = colors.markdownBlockQuote }
	highlights.RenderMarkdownDash = { fg = colors.markdownHorizontalRule }
	highlights.RenderMarkdownLink = { fg = colors.markdownLink }
	highlights.RenderMarkdownTableHead = { fg = colors.primary }
	highlights.RenderMarkdownTableRow = { fg = colors.text }

	-- Apply highlights
	for group, hl in pairs(highlights) do
		local ok, err = pcall(vim.api.nvim_set_hl, 0, group, hl)
		if not ok then
			vim.notify("Failed to set highlight " .. group .. ": " .. tostring(err), vim.log.levels.WARN)
		end
	end
end

return M
