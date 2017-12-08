execute pathogen#infect()

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors' " I should look into this again
Plug 'tpope/vim-endwise' " Auto completion for ruby `do;end`
Plug 'tpope/vim-fugitive' " Git
Plug 'tpope/vim-rails' " Easier navigation within Rails apps
Plug 'tpope/vim-rhubarb' " GitHub for Fugitive
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ruby-matchit' " Idk if this is working actually...
Plug 'vim-syntastic/syntastic' " Inline Linting
call plug#end()

" For syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_checkers = ['mri', 'rubocop']
" End syntastic

set wildmenu
set wildmode=longest,full,full

set ruler
set laststatus=2
set t_Co=256
set number relativenumber
set numberwidth=5

" set spell spelllang=en_us

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smartindent

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

syntax on
filetype plugin indent on

set textwidth=100
set colorcolumn=+1

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Better tabs
inoremap jk <esc>
nnoremap tn :tabedit .<return>
nnoremap tl gt
nnoremap th gT
nnoremap tx :tabclose<return>
nnoremap tm :tabm 

let mapleader = ' '

map <Leader>ak :Ack 
map <Leader>F :Files<return>
map <Leader>li :SyntasticCheck<return>
map <Leader>lo :lopen<return>
