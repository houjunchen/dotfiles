return {
  {
    "AckslD/nvim-neoclip.lua",
    event = "VeryLazy",
    opts = {
      history = 100,
    },
    config = function()
      require("neoclip").setup()
      require("telescope").load_extension("neoclip")
    end,
    keys = {
      { "<leader>fc", "<cmd>Telescope neoclip<cr>", desc = "Find Clipboard" },
    },
  },
}
