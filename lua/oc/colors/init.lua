local M = {}

local colors = {}

M.setup = function(opts)
	local style = opts and opts.style or "dark"

	if style == "dark" then
		colors = M.dark()
	else
		colors = M.light()
	end
end

M.get = function()
	return colors
end

M.dark = function()
	return {
		primary = "#fab283",
		secondary = "#5c9cf5",
		accent = "#9d7cd8",
		error = "#e06c75",
		warning = "#f5a742",
		success = "#7fd88f",
		info = "#56b6c2",
		text = "#eeeeee",
		textMuted = "#808080",
		background = "#0a0a0a",
		backgroundPanel = "#141414",
		backgroundElement = "#1e1e1e",
		border = "#484848",
		borderActive = "#606060",
		borderSubtle = "#3c3c3c",
		diffAdded = "#4fd6be",
		diffRemoved = "#c53b53",
		diffContext = "#828bb8",
		diffHunkHeader = "#828bb8",
		diffHighlightAdded = "#b8db87",
		diffHighlightRemoved = "#e26a75",
		diffAddedBg = "#20303b",
		diffRemovedBg = "#37222c",
		diffContextBg = "#141414",
		diffLineNumber = "#1e1e1e",
		diffAddedLineNumberBg = "#1b2b34",
		diffRemovedLineNumberBg = "#2d1f26",
		markdownText = "#eeeeee",
		markdownHeading = "#9d7cd8",
		markdownLink = "#fab283",
		markdownLinkText = "#56b6c2",
		markdownCode = "#7fd88f",
		markdownBlockQuote = "#e5c07b",
		markdownEmph = "#e5c07b",
		markdownStrong = "#f5a742",
		markdownHorizontalRule = "#808080",
		markdownListItem = "#fab283",
		markdownListEnumeration = "#56b6c2",
		markdownImage = "#fab283",
		markdownImageText = "#56b6c2",
		markdownCodeBlock = "#eeeeee",
		syntaxComment = "#808080",
		syntaxKeyword = "#9d7cd8",
		syntaxFunction = "#fab283",
		syntaxVariable = "#e06c75",
		syntaxString = "#7fd88f",
		syntaxNumber = "#f5a742",
		syntaxType = "#e5c07b",
		syntaxOperator = "#56b6c2",
		syntaxPunctuation = "#eeeeee",
	}
end

M.light = function()
	return {
		primary = "#3b7dd8",
		secondary = "#7b5bb6",
		accent = "#d68c27",
		error = "#d1383d",
		warning = "#d68c27",
		success = "#3d9a57",
		info = "#318795",
		text = "#1a1a1a",
		textMuted = "#8a8a8a",
		background = "#ffffff",
		backgroundPanel = "#fafafa",
		backgroundElement = "#f5f5f5",
		border = "#b8b8b8",
		borderActive = "#a0a0a0",
		borderSubtle = "#d4d4d4",
		diffAdded = "#1e725c",
		diffRemoved = "#c53b53",
		diffContext = "#7086b5",
		diffHunkHeader = "#7086b5",
		diffHighlightAdded = "#4db380",
		diffHighlightRemoved = "#f52a65",
		diffAddedBg = "#d5e5d5",
		diffRemovedBg = "#f7d8db",
		diffContextBg = "#fafafa",
		diffLineNumber = "#f5f5f5",
		diffAddedLineNumberBg = "#c5d5c5",
		diffRemovedLineNumberBg = "#e7c8cb",
		markdownText = "#1a1a1a",
		markdownHeading = "#d68c27",
		markdownLink = "#3b7dd8",
		markdownLinkText = "#318795",
		markdownCode = "#3d9a57",
		markdownBlockQuote = "#b0851f",
		markdownEmph = "#b0851f",
		markdownStrong = "#d68c27",
		markdownHorizontalRule = "#8a8a8a",
		markdownListItem = "#3b7dd8",
		markdownListEnumeration = "#318795",
		markdownImage = "#3b7dd8",
		markdownImageText = "#318795",
		markdownCodeBlock = "#1a1a1a",
		syntaxComment = "#8a8a8a",
		syntaxKeyword = "#d68c27",
		syntaxFunction = "#3b7dd8",
		syntaxVariable = "#d1383d",
		syntaxString = "#3d9a57",
		syntaxNumber = "#d68c27",
		syntaxType = "#b0851f",
		syntaxOperator = "#318795",
		syntaxPunctuation = "#1a1a1a",
	}
end

return M
