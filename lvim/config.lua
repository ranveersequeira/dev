-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
vim.opt.relativenumber = true
lvim.builtin.terminal.open_mapping = "<c-t>"
lvim.builtin.lualine.options.theme = "gruvbox"
lvim.format_on_save.enabled = false
lvim.colorscheme = 'gruvbox'
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
vim.opt.breakindent = true
vim.opt.wrap = true
vim.opt.scrolloff = 8
vim.opt.number = true
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 60

lvim.format_on_save = {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx" },
}


-- //MACROS
local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)
vim.api.nvim_create_augroup("JSLogMacro", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "JSLogMacro",
  pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact", "tsx", "jsx", "js" },
  callback = function()
    vim.fn.setreg('l', "yoconsole.log('" .. esc .. "pa:" .. esc .. "la," .. esc .. "pl")
  end

})


-- FORMATTER
-- LSP servers
lvim.lsp.installer.setup.ensure_installed = {
  "tsserver",
  "eslint",
}

-- Formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    command = "prettier",
    filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "json", "yaml", "markdown", "html", "css", "scss" },
  },
})

-- Linters (optional, but eslint is useful)
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    command = "eslint",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
})

lvim.plugins = {
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 0
    end,
  }, { "ellisonleao/gruvbox.nvim", priority = 1000 },
  { "catppuccin/nvim",          name = "catppuccin", priority = 1000 },

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-d>",
          accept_word = "<C-j>",
        },
        ignore_filetypes = { cpp = true }, -- or { "cpp", }
        color = {
          suggestion_color = "#ebdbb2",    -- light beige, readable on dark
          cterm = 244,
        },
        log_level = "info",                -- set to "off" to disable logging completely
        disable_inline_completion = false, -- disables inline completion for use with cmp
        disable_keymaps = false,           -- disables built in keymaps for more manual control
        condition = function()
          return false
        end -- condition to check for stopping supermaven, true means to stop supermaven when the condition is true.
      })
    end,
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = { enabled = false },
      explorer = { enabled = false },
      indent = { enabled = true },
      input = { enabled = false },
      picker = { enabled = true },
      notifier = { enabled = false },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = false },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      git = { enabled = true },
    },
  }, {
  "williamboman/mason.nvim"
}

  -- {
  --   'ThePrimeagen/git-worktree.nvim',
  --   config = function()
  --     require('git-worktree').setup()
  --     require("telescope").load_extension("git_worktree")
  --   end,
  -- },



}
