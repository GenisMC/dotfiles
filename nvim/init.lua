-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  vim.cmd([[source $HOME/.config/nvim/vscode-neovim.vim]])
else
  require("config.lazy")
end
