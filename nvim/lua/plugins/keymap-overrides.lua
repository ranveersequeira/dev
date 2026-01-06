return {
  "LazyVim/LazyVim",
  opts = {
    keys = {
      -- Disable the default <leader>/ for grep
      { "<leader>/", false },

      -- Add your new keymap for commenting
      { "<leader>/", "gcc", mode = "n", desc = "Toggle Comment (Line)",   remap = true },
      { "<leader>/", "gc",  mode = "v", desc = "Toggle Comment (Visual)", remap = true },
    },
  },
}
