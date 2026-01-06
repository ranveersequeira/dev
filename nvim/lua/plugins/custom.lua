-- File: ~/.config/nvim/lua/plugins/custom.lua

-- This function sets your core editor options, translated from your LunarVim config.
-- It's a clean way to manage vim.opt settings in LazyVim.
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    vim.opt.relativenumber = true
    vim.opt.breakindent = true
    vim.opt.wrap = true
    vim.opt.scrolloff = 8
    vim.opt.number = true
    vim.opt.softtabstop = 4
    vim.opt.expandtab = true
    vim.opt.smartindent = true
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.foldmethod = "indent"
    vim.opt.foldlevel = 80
  end,
})


return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
      highlights = {
        -- Transparent background
        Normal = { bg = "none" },
        NormalNC = { bg = "none" },
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        Pmenu = { bg = "none" },
      },
    },
    keys = {
      -- ❌ Disable default <leader>w (write file)
      { "<leader>w",  false },
      -- ❌ Disable default <leader>x (quit buffer)
      { "<leader>x",  false },
      -- ❌ Disable default <leader>h (clear search highlights)
      { "<leader>h",  false },
      -- ❌ Disable default <leader>fw (find word under cursor)
      { "<leader>fw", false },


      -- ✅ Remap <leader>w to save
      {
        "<leader>w",
        "<cmd>w<cr>",
        desc = "Save File",
      },

      -- ✅ Remap <leader>x to close buffer (using LazyVim's Snacks)
      {
        "<leader>x",
        function()
          require("snacks").bufremove(0)
        end,
        desc = "Close Buffer",
      },
      -- ✅ Clear search highlights
      {
        "<leader>h",
        "<cmd>nohlsearch<cr>",
        desc = "Clear Search Highlight",
      },
      -- ✅ 🔁 Reuse LazyVim's default grep (previously on <leader>/)
      {
        "<leader>fw",
        "<cmd>Telescope live_grep<cr>",
        desc = "Grep (root dir)",
      },

      {
        "<leader>wf",
        function()
          require("conform").format({ async = true })
        end,
        desc = "Format File",
      },
    },
  },

  -- 2. PLUGIN CONFIGURATIONS & ADDITIONS

  {
    "numToStr/Comment.nvim",
    opts = {}, -- or your custom config
    lazy = false,
  },

  -- Add your custom plugins from your LunarVim config
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd("highlight default link gitblame SpecialComment")
      vim.g.gitblame_enabled = 0 -- Disabled by default
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  { "stevearc/aerial.nvim", dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" } },

  -- {
  --   "supermaven-inc/supermaven-nvim",
  --   config = function()
  --     require("supermaven-nvim").setup({
  --       keymaps = {
  --         accept_suggestion = "<C-l>",
  --         clear_suggestion = "<C-d>",
  --         accept_word = "<C-j>",
  --         accept_line = "<C-k>",
  --       },
  --     })
  --   end,
  -- },

  {
    "ThePrimeagen/git-worktree.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("git-worktree").setup()
      require("telescope").load_extension("git_worktree")
    end,
  },

  -- 3. KEYMAPS

  -- 4. FORMATTING & LINTING (replacing null-ls)

  -- Configure format-on-save to only run for specific filetypes, as you had.
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Use prettier for formatting the specified filetypes
      opts.formatters_by_ft = {
        -- javascript = { "prettier" },
        -- typescript = { "prettier" },
        -- javascriptreact = { "prettier" },
        -- typescriptreact = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
      }
    end,
  },

  -- 5. MASON - Ensure all your tools are installed

  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      -- Combine your list of tools with the LazyVim defaults
      vim.list_extend(opts.ensure_installed, {
        "prettier",
        "eslint_d",
        "tailwindcss-language-server",
        "css-lsp",
        "html-lsp",
        "json-lsp",
        "pyright",
        "black",
        "ruff",
        "isort",
      })
    end,
  },
}
