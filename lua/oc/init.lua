local M = {}

function M.setup(opts)
	require("oc.config").setup(opts or {})

	-- Reload lualine when transparency is toggled via transparent.nvim
	vim.api.nvim_create_autocmd("User", {
		pattern = "TransparentClear",
		callback = function()
			if pcall(require, "lualine") then
				require("lualine").setup({ theme = "oc" })
			end
		end,
	})
end

--- Set terminal colors from palette
---@param colors table The color palette
local function set_terminal_colors(colors)
	if not colors.terminal then
		return
	end

	local t = colors.terminal
	vim.g.terminal_color_0 = t.black
	vim.g.terminal_color_1 = t.red
	vim.g.terminal_color_2 = t.green
	vim.g.terminal_color_3 = t.yellow
	vim.g.terminal_color_4 = t.blue
	vim.g.terminal_color_5 = t.magenta
	vim.g.terminal_color_6 = t.cyan
	vim.g.terminal_color_7 = t.white
	vim.g.terminal_color_8 = t.bright_black
	vim.g.terminal_color_9 = t.bright_red
	vim.g.terminal_color_10 = t.bright_green
	vim.g.terminal_color_11 = t.bright_yellow
	vim.g.terminal_color_12 = t.bright_blue
	vim.g.terminal_color_13 = t.bright_magenta
	vim.g.terminal_color_14 = t.bright_cyan
	vim.g.terminal_color_15 = t.bright_white
end

function M.load(style)
	-- Auto-detect from vim.o.background if style not provided
	style = style or vim.o.background or "dark"

	vim.g.colors_name = "oc"
	vim.o.termguicolors = true

	-- Load theme
	local theme = require("oc.theme")
	theme.load(style)

	-- Apply terminal colors if enabled
	local config = require("oc.config").options
	if config.terminal_colors then
		local colors = require("oc.colors").get()
		set_terminal_colors(colors)
	end
end

M.colorscheme = M.load

return M
