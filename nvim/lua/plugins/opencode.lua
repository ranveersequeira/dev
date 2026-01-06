return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    {
      "folke/snacks.nvim",
      opts = {
        input = {},
        picker = {},
        terminal = {},
      },
    },
  },

  config = function()
    local oc = require("opencode")

    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- keep empty or customize later
    }

    -- Required for reload events
    vim.o.autoread = true

    ------------------------------------------------------------------
    -- <leader>a → AI / Ask / opencode
    ------------------------------------------------------------------

    -- Core
    vim.keymap.set("n", "<leader>aa", function()
      oc.toggle()
    end, { desc = "Opencode toggle" })

    vim.keymap.set({ "n", "x" }, "<leader>aq", function()
      oc.ask("@this: ", { submit = true })
    end, { desc = "Opencode ask" })

    vim.keymap.set({ "n", "x" }, "<leader>ax", function()
      oc.select()
    end, { desc = "Opencode action picker" })

    ------------------------------------------------------------------
    -- Add context
    ------------------------------------------------------------------

    -- Add current line / range (operator-pending)
    vim.keymap.set({ "n", "x" }, "<leader>al", function()
      return oc.operator("@this ")
    end, {
      expr = true,
      desc = "Opencode add line / selection",
    })

    -- Add range explicitly
    vim.keymap.set("n", "<leader>ar", function()
      return oc.operator("@this ")
    end, {
      expr = true,
      desc = "Opencode add range",
    })

    -- Add current file
    vim.keymap.set("n", "<leader>af", function()
      oc.command("context.file")
    end, { desc = "Opencode add file" })

    -- Add full buffer
    vim.keymap.set("n", "<leader>ab", function()
      oc.command("context.buffer")
    end, { desc = "Opencode add buffer" })

    ------------------------------------------------------------------
    -- Navigation (inside opencode session)
    ------------------------------------------------------------------

    vim.keymap.set("n", "<leader>au", function()
      oc.command("session.half.page.up")
    end, { desc = "Opencode half page up" })

    vim.keymap.set("n", "<leader>ad", function()
      oc.command("session.half.page.down")
    end, { desc = "Opencode half page down" })
  end,
}
