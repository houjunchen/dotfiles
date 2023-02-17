local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-d>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', 'gca', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', '<leader>cd', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
vim.keymap.set('n', '<leader>cd', '<Cmd>Lspsaga show_cursor_diagnostics<CR>', opts)
