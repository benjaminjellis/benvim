-- Keymaps are automatically loaded on the VeryLazy event
-- Default eymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", ";", ":", { remap = true })
vim.keymap.set("n", "<leader>cb", "<cmd>%bd|e#<cr>")
-- spelling
vim.keymap.set("n", "<leader>spn", function()
  vim.fn["spelunker#jump_next"]()
end, { desc = "Go to next mis-spelled word", remap = true })
vim.keymap.set("n", "<leader>spp", function()
  vim.fn["spelunker#jump_prev"]()
end, { desc = "Go to previous mis-spelled word", remap = true })
vim.keymap.set("n", "<leader>spl", function()
  vim.fn["spelunker#correct_from_list"]()
end, { desc = "Correct mis-spelled word from list", remap = true })
vim.keymap.set("n", "<tab>", "<cmd> bnext <CR>")
