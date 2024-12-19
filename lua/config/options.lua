-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.swapfile = false
vim.g.snacks_animate = false
-- HACK: use blink from main to get around the blink providing suggestions for renaming
vim.g.lazyvim_blink_main = true
