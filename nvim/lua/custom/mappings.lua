---@type MappingsTable
local M = {}

M.general = {
  n = {
    --[";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = { ":LazyGit<CR>", "LazyGit" },
  },
}

-- more keybinds!

return M
