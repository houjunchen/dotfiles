return {
  "anuvyklack/pretty-fold.nvim",
  opts = {
    keep_indentation = false,
    fill_char = " ",
    sections = {
      left = {
        "+",
        function()
          return string.rep("-", vim.v.foldlevel)
        end,
        " ",
        "number_of_folded_lines",
        ":",
        "content",
      },
    },
  },
}
