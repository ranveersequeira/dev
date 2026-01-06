# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Plugins Used

This configuration includes the following plugins:

### AI & Coding Assistance

*   **opencode.nvim**
    *   **Description:** AI-powered coding assistant.
    *   **Usage:**
        *   `<leader>aa`: Toggle Opencode UI
        *   `<leader>aq`: Ask Opencode a question
        *   `<leader>ax`: Opencode action picker
        *   `<leader>al`: Add current line/selection as context
        *   `<leader>ar`: Add range explicitly as context
        *   `<leader>af`: Add current file as context
        *   `<leader>ab`: Add full buffer as context
        *   `<leader>au`: Opencode session half page up
        *   `<leader>ad`: Opencode session half page down

### File Explorer & Buffer Management

*   **snacks.nvim**
    *   **Description:** Utility plugin for various Neovim functionalities, including file explorer and terminal.
    *   **Usage:**
        *   `<leader>e`: Toggle Snacks Explorer
        *   `<leader>tt`: Toggle Terminal

*   **bufferline.nvim**
    *   **Description:** Displays a buffer line at the top of the screen.
    *   **Usage:**
        *   `<leader>br`: Delete Buffers to the Right
        *   `<leader>bl`: Delete Buffers to the Left
        *   `<leader>bb`: Previous Buffer
        *   `<leader>bn`: Next Buffer
        *   `<leader>x`: Close Current Buffer

### Git Integration

*   **f-person/git-blame.nvim**
    *   **Description:** Displays git blame information.
    *   **Usage:** Automatically displayed in the editor. Disabled by default, enable via configuration if needed.

*   **ThePrimeagen/git-worktree.nvim**
    *   **Description:** Manages git worktrees.
    *   **Usage:** Use Telescope to manage git worktrees (refer to Telescope integration for specific commands).

### Code Formatting & Linting

*   **stevearc/conform.nvim**
    *   **Description:** Handles code formatting and linting.
    *   **Usage:** Automatically formats files on save for supported filetypes (JSON, YAML, Markdown, HTML, CSS, SCSS). Trigger manually with `<leader>wf`.

*   **mason-org/mason.nvim**
    *   **Description:** Manages Neovim language servers and formatters.
    *   **Usage:** Ensures essential tools like `prettier`, `eslint_d`, `pyright`, `ruff`, etc., are installed.

### Commenting

*   **numToStr/Comment.nvim**
    *   **Description:** For commenting and uncommenting code.
    *   **Usage:**
        *   `gcc` (normal mode): Toggle Comment (Line)
        *   `gc` (visual mode): Toggle Comment (Visual)

### Navigation & UI

*   **stevearc/aerial.nvim**
    *   **Description:** Provides code navigation features (e.g., outline).
    *   **Usage:** Refer to Aerial.nvim documentation for specific commands and keymaps.

### Colorscheme

*   **ellisonleao/gruvbox.nvim**
    *   **Description:** Sets the `gruvbox` color scheme.
    *   **Usage:** Automatically applied. Transparent background is configured.

### Other Utilities

*   **nvim-ts-autotag**
    *   **Description:** Autoclose/pair HTML/XML tags.
    *   **Usage:** Automatically pairs tags as you type.

## Keymap Summary

*   **Opencode:**
    *   `<leader>aa`: Toggle Opencode UI
    *   `<leader>aq`: Ask Opencode a question
    *   `<leader>ax`: Opencode action picker
    *   `<leader>al`: Add current line/selection as context
    *   `<leader>ar`: Add range explicitly as context
    *   `<leader>af`: Add current file as context
    *   `<leader>ab`: Add full buffer as context
    *   `<leader>au`: Opencode session half page up
    *   `<leader>ad`: Opencode session half page down

*   **Snacks:**
    *   `<leader>e`: Toggle Snacks Explorer
    *   `<leader>tt`: Toggle Terminal

*   **Bufferline:**
    *   `<leader>br`: Delete Buffers to the Right
    *   `<leader>bl`: Delete Buffers to the Left
    *   `<leader>bb`: Previous Buffer
    *   `<leader>bn`: Next Buffer
    *   `<leader>x`: Close Current Buffer

*   **Commenting:**
    *   `gcc` (normal mode): Toggle Comment (Line)
    *   `gc` (visual mode): Toggle Comment (Visual)

*   **Formatting:**
    *   `<leader>wf`: Format File

*   **Grep:**
    *   `<leader>fw`: Grep (root dir) (using Telescope)
    *   `<leader>fg`: Grep (Root Dir) (using LazyVim pick)

*   **General:**
    *   `<leader>w`: Save File
    *   `<leader>h`: Clear Search Highlight
