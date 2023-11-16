-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>wa", "<cmd>WorkspacesAdd <CR>", { nowait = true })
vim.keymap.set("n", "<leader>wo", "<cmd>WorkspacesOpen <CR>", { nowait = true })
