local M = {}

function M.setup(opts)
	require("oc.config").setup(opts or {})
end

function M.load(style)
	-- Auto-detect from vim.o.background if style not provided
	style = style or vim.o.background or "dark"

	vim.cmd("hi clear")
	vim.g.colors_name = "oc"
	vim.o.termguicolors = true

	local theme = require("oc.theme")
	theme.load(style)
end

M.colorscheme = M.load

return M
