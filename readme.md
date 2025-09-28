# mago23's Neovim Configuration

This is a personal Neovim configuration, built on top of the excellent [LazyVim](https://github.com/LazyVim/LazyVim) starter. It's tailored for a productive and visually pleasing development experience, with a focus on web development (TypeScript, TailwindCSS, Astro) and general purpose programming.

## ✨ Features

  * **🚀 Fast & Lean**: Built on `lazy.nvim` for optimized startup times and on-demand plugin loading.
  * **🎨 Gorgeous UI**: Featuring the popular **Catppuccin** colorscheme and a clean, modern interface with `lualine`, `bufferline`, and `noice.nvim`.
  * **🧠 Smart Editing**: Enhanced LSP support for auto-completion, diagnostics, and code actions. Includes configurations for TailwindCSS, TypeScript, CSS, and more.
  * **🌲 Advanced Treesitter**: Robust syntax highlighting and text objects.
  * **🔭 Powerful Search**: Pre-configured [Telescope](https://github.com/nvim-telescope/telescope.nvim) for finding files, text, buffers, and more, with an integrated file browser.
  * **🤖 AI-Assisted Coding**: Integrated with [Copilot](https://github.com/zbirenbaum/copilot.lua) for code suggestions.
  * **✅ Quality Tools**: Linting and formatting set up with `eslint` and `prettier`.

## 📋 Prerequisites

  * **Neovim v0.8.0+**
  * **Git**
  * A **Nerd Font** installed and configured in your terminal.
  * (Optional but Recommended) A C compiler for `nvim-treesitter` and `telescope-fzf-native`.

## 💾 Installation

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/mago23/mago23Nvim.git ~/.config/nvim
    ```

    *(Make sure to back up your existing `~/.config/nvim` directory if you have one.)*

2.  **Start Neovim:**

    ```bash
    nvim
    ```

    `lazy.nvim` will automatically bootstrap and install all the plugins on the first run.

## ⌨️ Keymaps

The leader key is set to `<Space>`.

### General & Editing

| Keymap | Description |
| :--- | :--- |
| `+` / `-` | Increment / Decrement numbers. |
| `<C-a>` | Select all text in the buffer. |
| `<leader>d` | Delete without affecting the register. |
| `<leader>p` | Paste without affecting the register. |
| `<leader>z` | Toggle Zen Mode for distraction-free writing. |
| `<C-j>` | Go to the next diagnostic. |

### Telescope (Fuzzy Finder)

| Keymap | Description |
| :--- | :--- |
| `;f` | Find files (respects `.gitignore`). |
| `;r` | Live grep for text in the current directory. |
| `\\` | List open buffers. |
| `;t` | Search help tags. |
| `;e` | Show diagnostics for all buffers. |
| `sf` | Open a file browser in the current buffer's directory. |

### Window & Tab Management

| Keymap | Description |
| :--- | :--- |
| `ss` / `sv` | Split window horizontally / vertically. |
| `s{h,j,k,l}` | Move focus to the split on the left/down/up/right. |
| `<Tab>` | Go to the next tab/buffer. |
| `<S-Tab>` | Go to the previous tab/buffer. |
