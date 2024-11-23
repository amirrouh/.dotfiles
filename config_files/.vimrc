set nocompatible
set laststatus=2
set nu
set ai
set path+=**
syntax on

" Ensure vim-plug is installed for Vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'voldikss/vim-floaterm'
Plug 'itchyny/lightline.vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'vim-latex/vim-latex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-scripts/indentpython.vim'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'davidhalter/jedi-vim'
Plug 'ekalinin/Dockerfile.vim'

call plug#end()

set background=dark

" To add python run to vim
autocmd FileType python map <buffer> <F5> :w<CR>:exec '! clear; python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '! clear; python3' shellescape(@%, 1)<CR>

" Tab for autocompletion
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Nerdtree toggle
nnoremap <silent> <expr> <C-o> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : "\:NERDTree<CR>"

colorscheme gruvbox

filetype plugin on

set shellslash

filetype indent on

let g:tex_flavor='latex'

let g:user_emmet_leader_key=','
set tabstop=4
set softtabstop=0
set noexpandtab
set shiftwidth=4
set hidden

nmap <C-P> :FZF<CR>

tnoremap <Esc> <C-\><C-n>

let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_DefaultTargetFormat = 'pdf'

set splitbelow
set splitright

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

set foldmethod=indent
set foldlevel=99

set hlsearch

nnoremap <space> za

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

hi MatchParen cterm=none ctermbg=green ctermfg=blue

set backspace=indent,eol,start

let g:jedi#popup_on_dot = 1

set mouse=a
