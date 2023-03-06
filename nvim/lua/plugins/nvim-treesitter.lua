local function ts_disable(_, bufnr)
  return vim.api.nvim_buf_line_count(bufnr) > 5000
end

return {
  { import = "lazyvim.plugins.extras.lang.typescript" },

  { import = "lazyvim.plugins.extras.lang.json" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        enable = true,
        disable = function(lang, bufnr)
          return lang == "cmake" or ts_disable(lang, bufnr)
        end,
      },
      indent = {
        enable = true,
        disable = {},
      },
      ensure_installed = {
        "bash",
        "go",
        "lua",
        "javascript",
        "json",
        "markdown",
        "markdown_inline",
        "python",
        "solidity",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
}
