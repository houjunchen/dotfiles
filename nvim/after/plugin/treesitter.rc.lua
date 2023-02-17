local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

local function ts_disable(_, bufnr)
    return vim.api.nvim_buf_line_count(bufnr) > 5000
end

ts.setup {
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
    "lua",
    "json",
    "yaml",
    "python",
    "go",
    -- "solidity",
  },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = 5000, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
