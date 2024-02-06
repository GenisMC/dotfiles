return {
  {
    "ellisonleao/gruvbox.nvim",
    config = true,
    opts = {
      transparent_mode = true,
      dim_inactive = true,
    },
  },
  {
    "arcticicestudio/nord-vim",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        background = {
          dark = "mocha",
          light = "latte",
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
