set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" Vundle plugins
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-commentary.git'
Plugin 'tpope/vim-surround.git'
Plugin 'nathanaelkane/vim-indent-guides.git'
Plugin 'morhetz/gruvbox.git'
Plugin 'preservim/nerdtree.git'
Plugin 'ycm-core/YouCompleteMe.git'


call vundle#end()
filetype plugin indent on

" Color scheme 
set termguicolors
set bg=dark
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='medium'
autocmd vimenter * colorscheme gruvbox

"Indent guides 
set ts=4 sw=4 et
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray13 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=gray13 ctermbg=4


" General rules
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set nrformats=
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab " 4 spaces instead of tab
set clipboard=unnamedplus

" Key mappings
map K gt
map J gT

syntax on

" Commands
command Q q
