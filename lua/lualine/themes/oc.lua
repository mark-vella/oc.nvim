-- Lualine theme for oc.nvim
-- https://github.com/mark-vella/oc.nvim

local M = {}

function M.get()
	-- Ensure colors are loaded
	local colors_module = require("oc.colors")
	local colors = colors_module.get()

	-- Fallback if colors haven't been set up yet
	if not colors or not colors.lualine then
		local style = vim.o.background or "dark"
		colors_module.setup({ style = style })
		colors = colors_module.get()
	end

	local c = colors

	-- Get config and check for transparency
	local config = require("oc.config").options
	local transparent = config.transparent or vim.g.transparent_enabled

	-- Transparent background helper
	local bg_element = transparent and "NONE" or c.backgroundElement
	local bg_panel = transparent and "NONE" or c.backgroundPanel

	return {
		normal = {
			a = { bg = c.lualine.normal, fg = c.background, gui = "bold" },
			b = { bg = bg_element, fg = c.text },
			c = { bg = bg_panel, fg = c.textMuted },
		},
		insert = {
			a = { bg = c.lualine.insert, fg = c.background, gui = "bold" },
			b = { bg = bg_element, fg = c.text },
			c = { bg = bg_panel, fg = c.textMuted },
		},
		visual = {
			a = { bg = c.lualine.visual, fg = c.background, gui = "bold" },
			b = { bg = bg_element, fg = c.text },
			c = { bg = bg_panel, fg = c.textMuted },
		},
		replace = {
			a = { bg = c.lualine.replace, fg = c.background, gui = "bold" },
			b = { bg = bg_element, fg = c.text },
			c = { bg = bg_panel, fg = c.textMuted },
		},
		command = {
			a = { bg = c.lualine.command, fg = c.background, gui = "bold" },
			b = { bg = bg_element, fg = c.text },
			c = { bg = bg_panel, fg = c.textMuted },
		},
		terminal = {
			a = { bg = c.lualine.terminal, fg = c.background, gui = "bold" },
			b = { bg = bg_element, fg = c.text },
			c = { bg = bg_panel, fg = c.textMuted },
		},
		inactive = {
			a = { bg = bg_panel, fg = c.textMuted },
			b = { bg = bg_panel, fg = c.textMuted },
			c = { bg = bg_panel, fg = c.textMuted },
		},
	}
end

return M.get()
