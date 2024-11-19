-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.spelllang = {}
vim.opt.expandtab = true
vim.opt.foldlevel = 99
vim.opt.foldmethod = "indent"
-- vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.smarttab = true
-- vim.opt.tabstop = 4
vim.opt.wrap = true

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.opt.guifont = "SauceCodePro Nerd Font Mono:h13"
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
