-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

vim.keymap.set("n", "<leader>wa", "<cmd>WorkspacesAdd <CR>", { nowait = true })
vim.keymap.set("n", "<leader>wo", "<cmd>WorkspacesOpen <CR>", { nowait = true })

-- Terminal
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end

vim.keymap.set("n", "<c-\\>", lazyterm, { nowait = true })
vim.keymap.set("t", "<C-\\>", "<cmd>close<cr>", { nowait = true })

vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", { nowait = true })
