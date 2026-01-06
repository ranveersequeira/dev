-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
---Remap <leader>/ to toggle comments
-- "gcc" toggles the current line, "gc" toggles visual selection
-- { remap = true } is important so it triggers the plugin's "gcc" command
local map = vim.keymap.set

map("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle Comment", remap = true })
-- Map Grep to <leader>fg since <leader>/ is now taken
map("n", "<leader>fg", LazyVim.pick("live_grep"), { desc = "Grep (Root Dir)" })
