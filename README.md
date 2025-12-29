# oc.nvim

OpenCode theme for Neovim - a dark and light colorscheme inspired by the default theme in [OpenCode](https://opencode.ai).

## Screenshots

![Dark theme preview showing syntax highlighting in Neovim](https://github.com/mark-vella/oc.nvim/blob/m/assets/dark.png?raw=true)
![Light theme preview showing syntax highlighting in Neovim](https://github.com/mark-vella/oc.nvim/blob/m/assets/light.png?raw=true)

## Features

- Dark and light themes
- Respects `vim.o.background` setting
- Transparent background support
- Terminal colors (16-color palette)
- Treesitter support
- LSP support
- Lualine theme
- Plugin integrations:
  - nvim-cmp
  - GitSigns
  - NvimTree
  - Neo-tree
  - Telescope
  - Which-key
  - Indent Blankline
  - Dashboard / Alpha
  - Lazy
  - Mason
  - Notify
  - Noice
  - Mini.nvim
  - Trouble
  - Navic
  - BufferLine
  - Lualine
  - Leap
  - Flash
  - Hop
  - Illuminate
  - Fidget
  - Headlines
  - RenderMarkdown

## Installation

### lazy.nvim

```lua
{
  "mark-vella/oc.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("oc").setup({})
    vim.cmd.colorscheme("oc")
  end,
}
```

### packer.nvim

```lua
use {
  "mark-vella/oc.nvim",
  config = function()
    require("oc").setup({})
    vim.cmd.colorscheme("oc")
  end,
}
```

## Usage

### Basic

```lua
vim.cmd.colorscheme("oc")
```

### Dark mode

```lua
vim.o.background = "dark"
vim.cmd.colorscheme("oc")
```

### Light mode

```lua
vim.o.background = "light"
vim.cmd.colorscheme("oc")
```

## Configuration

```lua
require("oc").setup({
  -- Enable transparent background
  transparent = false,

  -- Configure terminal colors
  terminal_colors = true,

  -- Style overrides for syntax groups
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
})
```

## Lualine Integration

oc.nvim includes a dedicated lualine theme with mode colors inspired by OpenCode's agent system:

```lua
require("lualine").setup({
  options = {
    theme = "oc",
  },
})
```

**Note:** The lualine theme is not automatically applied - you need to manually configure lualine to use the `oc` theme.

## Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on:

- Adding plugin support
- Code style requirements
- Testing changes
- Submitting pull requests

## Credits

- [OpenCode](https://opencode.ai) - The inspiration for this colorscheme
