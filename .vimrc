set nocompatible
set laststatus=2
set nu
set ai
filetype plugin off
set path+=**
syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
    
call plug#begin()
" Install file explorer
Plug 'preservim/nerdtree'
" Floating terminal
Plug 'voldikss/vim-floaterm'
" Fancy statusbar
Plug 'itchyny/lightline.vim'
"This Plugin is for latex support
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"Autocomplition support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Manage Surrounding and tags "
Plug 'tpope/vim-surround'
" Manage multi cursor and refractoring "
Plug 'terryma/vim-multiple-cursors'
" Manage commenting "
Plug 'tpope/vim-commentary'
" Beautify the status bar "
Plug 'itchyny/lightline.vim'
" Add emmet feature specially for html "
Plug 'mattn/emmet-vim'
" Install latex plugin"
Plug 'vim-latex/vim-latex'
" Fuzzy finder plugin "
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Linting plugin " 
" Plug 'dense-analysis/ale'
" AutoIndent Python"
Plug 'vim-scripts/indentpython.vim'
" Drakula theme for vim
Plug 'dracula/vim', { 'name': 'dracula' }
"Gruxbox theme"
Plug 'morhetz/gruvbox'
" autocomplition
Plug 'davidhalter/jedi-vim'
" Docker support"
Plug 'ekalinin/Dockerfile.vim'
set background=dark
call plug#end()

" To add python run to vim
autocmd FileType python map <buffer> <F5> :w<CR>:exec '! clear; python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '! clear; python3' shellescape(@%, 1)<CR>

" To use tab to cycle in autocomplition suggestions
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"
      
" Open and close Nerdtree using F6 "
nnoremap <silent> <expr> <C-o> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" Enable the color theme"
colorscheme gruvbox

"latex-suit changes"
"REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
" Define emmet trigger key as ,,"
let g:user_emmet_leader_key=','
" Replace 8 space tab (default vim) to 4 space for python"
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" To be able to edit multiple buffers without saving them "
set hidden
" Map c-p to fuzzy finder plugin "
nmap <C-P> :FZF<CR>
" Use escape key to exit from terminal mode in vim "
tnoremap <Esc> <C-\><C-n>
" To set PDF as default output of latex-vim suite "
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_DefaultTargetFormat = 'pdf'
" To set live PDF viewer for latex"
" let g:livepreview_previewer = 'your_viewer'

" More natural spliting in vim "
set splitbelow
set splitright

" To move in inset mode using ctrl and hjkl "
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

"Enable code folding " 
set foldmethod=indent
set foldlevel=99

"Enable highlight for searches
set hlsearch

" Enable folding and unfolding with spacebar"
" Enable folding with the spacebar
nnoremap <space> za
" shortcuts for flutter developement
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Colorize the bracket pairs
hi MatchParen cterm=none ctermbg=green ctermfg=blue
" backspace fix
set backspace=indent,eol,start
" jedi-vim configuration
let g:jedi#popup_on_dot = 1
