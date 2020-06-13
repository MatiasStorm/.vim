set nocompatible

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
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgrey ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=4


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
map K gt
map J gT

syntax on

" Commands
command Q q
