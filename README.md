# Personal Neovim Config

This is my personal Neovim configuration, tailored to my workflow and preferences. It includes plugins managed with [lazy.nvim](https://github.com/folke/lazy.nvim), LSP support, and a few custom tweaks.

## Features

- **Language Support**: Configured LSPs for Lua, Python, TypeScript, Go, and more.
- **Plugins**: Tools like Telescope, Treesitter, Gruvbox theme, and others for an enhanced editing experience.
- **Custom Keybindings**: Simplified navigation and workflow shortcuts.
- **Lightweight Enhancements**: Relative line numbers, yank highlights, and diagnostic messages.

## Setup

1. Install prerequisites:
   ```bash
   brew install neovim lua-language-server typescript-language-server pyright gopls ripgrep
   ```

2. Clone this config:
   ```bash
   git clone https://github.com/your-repo-name ~/.config/nvim
   ```

3. Open Neovim and run `:Lazy` to install plugins.

