return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    cmd = "NvimTreeToggle",
    keys = {
      { "<leader>fe", ":NvimTreeToggle<cr>", desc = "Toggle File Explorer" },
      { "<c-n>", ":NvimTreeToggle<cr>", desc = "Toggle File Explorer" },
    },
    opts = {
      filters = {
        dotfiles = false,
      },
    },
  },
}
