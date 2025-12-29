local M = {}

---@class oc.Config
local defaults = {
	transparent = false,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = {},
		functions = {},
		variables = {},
	},
}

---@type oc.Config
M.options = vim.deepcopy(defaults)

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", defaults, opts or {})
end

return M
