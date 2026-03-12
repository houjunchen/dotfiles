return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    local fzf = require("fzf-lua")
    local config = fzf.config
    -- Restore ctrl-t to open in a new tab (LazyVim overrides it to open trouble)
    config.defaults.actions.files["ctrl-t"] = fzf.actions.file_tabedit
    -- Move trouble to alt-t instead
    if LazyVim.has("trouble.nvim") then
      config.defaults.actions.files["alt-t"] = require("trouble.sources.fzf").actions.open
    end
  end,
}
