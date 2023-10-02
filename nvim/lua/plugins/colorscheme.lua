return {
  {
    "RRethy/nvim-base16",
    config = function()
      require("base16-colorscheme").with_config({
        telescope = false,
      })
    end,
  },

  { "ellisonleao/gruvbox.nvim" },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      -- latte, frappe, macchiato, mocha
      flavour = "macchiato",
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
