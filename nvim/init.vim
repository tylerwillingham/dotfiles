call plug#begin(stdpath('data') . '/plugged')
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Remember to install nerd-patched font
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'tpope/vim-surround'

Plug 'christoomey/vim-tmux-runner'
Plug 'janko-m/vim-test'
call plug#end()

lua << END
-- I'm going to try to use lua for config as much as possible...
require('lualine').setup()
require('lsp')

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

" Switch b/w last two files
nnoremap <Leader><Leader> <c-^>

map <Leader><Tab> :w<return>
map <Leader>s :sort<return>
" map <Leader>F :GFiles<return>
" map <Leader>ak :Ack! 
map <Leader>em :Emodel 
" map <Leader>gi :Gist -a<return>
map <Leader>lo :lopen<return>
" map <Leader>tf :TestFile<return>
" map <Leader>tl :TestLast<return>
" map <Leader>tn :TestNearest<return>
" map <Leader>tv :TestVisit<return>
map <Leader>/ :noh<return>
