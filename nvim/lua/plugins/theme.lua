return {
  {
    "ellisonleao/gruvbox.nvim",
    config = true,
    opts = {
      transparent_mode = false,
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
        transparent_background = false,
        background = {
          dark = "mocha",
          light = "latte",
        },
        custom_highlights = function(colors)
          return {
            Identifier = { fg = colors.red },
            Structure = { fg = colors.red },
          }
        end,
        styles = {
          loops = { "italic" },
          keywords = { "bold" },
          comments = { "italic" },
          functions = { "italic" },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
