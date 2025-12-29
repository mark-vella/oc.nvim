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

	return {
		normal = {
			a = { bg = c.lualine.normal, fg = c.background, gui = "bold" },
			b = { bg = c.backgroundElement, fg = c.text },
			c = { bg = c.backgroundPanel, fg = c.textMuted },
		},
		insert = {
			a = { bg = c.lualine.insert, fg = c.background, gui = "bold" },
			b = { bg = c.backgroundElement, fg = c.text },
			c = { bg = c.backgroundPanel, fg = c.textMuted },
		},
		visual = {
			a = { bg = c.lualine.visual, fg = c.background, gui = "bold" },
			b = { bg = c.backgroundElement, fg = c.text },
			c = { bg = c.backgroundPanel, fg = c.textMuted },
		},
		replace = {
			a = { bg = c.lualine.replace, fg = c.background, gui = "bold" },
			b = { bg = c.backgroundElement, fg = c.text },
			c = { bg = c.backgroundPanel, fg = c.textMuted },
		},
		command = {
			a = { bg = c.lualine.command, fg = c.background, gui = "bold" },
			b = { bg = c.backgroundElement, fg = c.text },
			c = { bg = c.backgroundPanel, fg = c.textMuted },
		},
		terminal = {
			a = { bg = c.lualine.terminal, fg = c.background, gui = "bold" },
			b = { bg = c.backgroundElement, fg = c.text },
			c = { bg = c.backgroundPanel, fg = c.textMuted },
		},
		inactive = {
			a = { bg = c.backgroundPanel, fg = c.textMuted },
			b = { bg = c.backgroundPanel, fg = c.textMuted },
			c = { bg = c.backgroundPanel, fg = c.textMuted },
		},
	}
end

return M.get()
