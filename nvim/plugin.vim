if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

"------------------------------------------------------------------------------
" vim-plug setting
" https://github.com/junegunn/vim-plug
"------------------------------------------------------------------------------

call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'p00f/nvim-ts-rainbow'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'

Plug 'folke/todo-comments.nvim'

" ---- Go
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua'

" ---- Other languages
" https://github.com/TovarishFin/vim-solidity
Plug 'TovarishFin/vim-solidity'

Plug 'rvmelkonian/move.vim'

" ---- Colorscheme
" Base16 for Vim
"Plug 'chriskempson/base16-vim'

" A color scheme based on Google's Material Design palette
Plug 'tyrannicaltoucan/vim-quantum'

Plug 'RRethy/nvim-base16'

" Motion enhancement
"Plug 'easymotion/vim-easymotion'
"Plug 'phaazon/hop.nvim'

" Git wrapper for Vim
Plug 'tpope/vim-fugitive'

Plug 'windwp/nvim-autopairs'

Plug 'lukas-reineke/indent-blankline.nvim'

" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'github/copilot.vim'

" All of your Plugins must be added before the following line
call plug#end()
