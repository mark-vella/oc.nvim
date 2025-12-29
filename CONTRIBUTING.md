# Contributing to oc.nvim

Thank you for your interest in contributing to oc.nvim! This document provides guidelines for contributing to the project.

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/oc.nvim.git
   cd oc.nvim
   ```
3. **Create a branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Code Style

This project uses [StyLua](https://github.com/JohnnyMorganz/StyLua) for Lua formatting. Before submitting a PR, please format your code:

```bash
stylua .
```

The project uses the configuration in `stylua.toml`.

## Adding Plugin Support

To add highlight support for a new plugin, edit `lua/oc/theme.lua` and add your highlights in the appropriate section.

Follow this pattern:

```lua
-- Plugin: plugin-name
-- https://github.com/author/plugin-name
highlights.PluginHighlightGroup = { fg = colors.primary, bg = colors.background }
highlights.PluginAnotherGroup = { fg = colors.text, bold = true }
```

Guidelines for plugin highlights:
- Use semantic colors from the palette (e.g., `colors.error`, `colors.success`, `colors.primary`)
- Include a comment with the plugin name and repository URL
- Group related highlights together
- Test both dark and light themes

## Testing Changes

1. Install the colorscheme locally by adding it to your Neovim config:
   ```lua
   -- For lazy.nvim, use the local path
   { dir = "/path/to/your/oc.nvim" }
   ```

2. Test both themes:
   ```lua
   vim.o.background = "dark"
   vim.cmd.colorscheme("oc")
   
   vim.o.background = "light"
   vim.cmd.colorscheme("oc")
   ```

3. Verify your changes work with relevant plugins installed

## Submitting Changes

1. **Commit your changes** with a clear, descriptive message:
   ```bash
   git commit -m "Add support for plugin-name highlights"
   ```

2. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```

3. **Open a Pull Request** on GitHub with:
   - A clear title describing the change
   - A description of what was changed and why
   - Screenshots if the change affects appearance

## Reporting Issues

When reporting issues, please include:

- Neovim version (`nvim --version`)
- Operating system
- Minimal configuration to reproduce the issue
- Screenshots showing the problem
- Expected vs. actual behavior

## Questions?

If you have questions, feel free to open an issue for discussion.
