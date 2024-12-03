vim.keymap.set("n", ";", ":", { remap = true })
vim.keymap.set("n", "<leader>cb", "<cmd>%bd|e#<cr>")
-- spelling
vim.keymap.set("n", "<leader>spn", function()
  vim.fn["spelunker#jump_next"]()
end, { desc = "Go to next mis-spelled word", remap = true })
vim.keymap.set("n", "<leader>spp", function()
  vim.fn["spelunker#jump_prev"]()
end, { desc = "Go to previous mis-spelled word", remap = true })
