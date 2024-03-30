-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
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
vim.opt.foldlevel = 80
vim.keymap.set("n", 'Leader<>sR', "<CMD>lua require('telescope).extensions.git_worktree.create_git_worktree()<CR>")
vim.keymap.set("n", 'Leader<>sr', "<CMD>lua require('telescope).extensions.git_worktree.git_worktree()<CR>")
-- Change '<C-g>' here to any keycode you like.
vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
vim.keymap.set('i', '<c-s>', function() return vim.fn['codeium#Complete']() end, { expr = true, silent = true })
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
  -- {
  --   'ThePrimeagen/git-worktree.nvim',
  --   config = function()
  --     require('git-worktree').setup()
  --     require("telescope").load_extension("git_worktree")
  --   end,
  -- },
  {
  'Exafunction/codeium.vim',
  event = 'BufEnter'
}
}
