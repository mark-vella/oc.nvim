# oc.nvim

OpenCode theme for Neovim - a dark and light colorscheme inspired by the default theme in [OpenCode](https://opencode.ai).

## Screenshots

![Dark theme preview showing syntax highlighting in Neovim](https://github.com/mark-vella/oc.nvim/blob/m/assets/dark.png?raw=true)
![Light theme preview showing syntax highlighting in Neovim](https://github.com/mark-vella/oc.nvim/blob/m/assets/light.png?raw=true)

## Features

- Dark and light themes
- Respects `vim.o.background` setting
- Treesitter support
- LSP support
- Plugin integrations:
  - nvim-cmp
  - GitSigns
  - NvimTree
  - Telescope
  - Which-key
  - And more...

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

## Credits

- [OpenCode](https://opencode.ai) - The inspiration for this colorscheme
