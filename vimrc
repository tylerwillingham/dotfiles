execute pathogen#infect()

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-runner'
Plug 'ervandew/supertab'
Plug 'flazz/vim-colorschemes'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mileszs/ack.vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'pbrisbin/vim-mkdir'
Plug 'terryma/vim-multiple-cursors' " I should look into this again
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise' " Auto completion for ruby `do;end`
Plug 'tpope/vim-fugitive' " Git
Plug 'tpope/vim-rails' " Easier navigation within Rails apps
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb' " GitHub for Fugitive
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'tmhedberg/matchit'
call plug#end()

colorscheme base16-eighties

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
set cursorline

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Better tabs
" inoremap jk <esc>
nnoremap tc :tabedit .<return>:tabo!<return>
nnoremap th gT
nnoremap tl gt
nnoremap tm :tabm 
nnoremap tn :tabedit .<return>
nnoremap to :tabo<return>
nnoremap tx :tabclose<return>

" Highlight search results
set hlsearch

let mapleader = ' '

" vim-test strategy
let test#strategy = 'vtr'

" Switch b/w last two files
nnoremap <Leader><Leader> <c-^>

map <Leader><Tab> :w<return>
map <Leader>F :GFiles<return>
map <Leader>ak :Ack! 
map <Leader>em :Emodel 
map <Leader>gi :Gist -a<return>
map <Leader>li :SyntasticCheck<return>
map <Leader>lo :lopen<return>
map <Leader>src :source ~/.vimrc<return>
map <Leader>tf :TestFile<return>
map <Leader>tl :TestLast<return>
map <Leader>tn :TestNearest<return>
map <Leader>tv :TestVisit<return>
map <Leader>/ :noh<return>
