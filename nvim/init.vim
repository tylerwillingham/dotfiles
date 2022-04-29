call plug#begin(stdpath('data') . '/plugged')
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Remember to install nerd-patched font
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" begin autocompletion support
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" end autocompletion support

Plug 'L3MON4D3/LuaSnip' " snippet support, required for nvim-cmp
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'christoomey/vim-tmux-runner'
Plug 'janko-m/vim-test'
Plug 'numToStr/Comment.nvim' " line commenting for neovim
Plug 'tpope/vim-endwise' " Auto completion for ruby `do;end`
Plug 'tpope/vim-rails' " Easier navigation within Rails apps
Plug 'tpope/vim-surround'
Plug 'mxw/vim-jsx' " It would be nice to find a lsp-supporting jsx syntax highlighter
call plug#end()

lua << END
-- I'm going to try to use lua for config as much as possible...
require('lsp')
require('autocompletion')

require('Comment').setup()
require('lualine').setup()

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "vendor/*",
      "tmp/*",
      "log/*",
      "sorbet/*",
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override generic sorter
      override_file_sorter = true,    -- override file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
    }
  }
}

-- load fzf with telescope
require('telescope').load_extension('fzf')

vim.g.mapleader = ' '

vim.o.numberwidth = 5
vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.shiftround = true
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.textwidth = 100
vim.o.colorcolumn = "+1"
vim.o.cursorline = true

vim.o.splitbelow = true -- open new vertical splits below the current
vim.o.splitright = true -- open new horizontal splits to the right of the current
END

" Telescope commands
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

colorscheme tokyonight

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Better tabs
nnoremap tc :tabedit .<return>:tabo!<return>
nnoremap th gT
nnoremap tl gt
nnoremap tm :tabm 
nnoremap tn :tabedit .<return>
nnoremap to :tabo<return>
nnoremap tx :tabclose<return>

let test#strategy = 'vtr'

" Switch b/w last two files
nnoremap <Leader><Leader> <c-^>

map <Leader><Tab> :w<return>
map <Leader>s :sort<return>
map <Leader>em :Emodel 
map <Leader>lo :lopen<return>
map <Leader>tf :TestFile<return>
map <Leader>tl :TestLast<return>
map <Leader>tn :TestNearest<return>
map <Leader>tv :TestVisit<return>
map <Leader>/ :noh<return>
