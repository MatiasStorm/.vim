set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-commentary.git'
Plugin 'tpope/vim-surround.git'
Plugin 'nathanaelkane/vim-indent-guides.git'
Plugin 'morhetz/gruvbox.git'
Plugin 'preservim/nerdtree.git'
Plugin 'ycm-core/YouCompleteMe.git'
Plugin 'jremmen/vim-ripgrep'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'git@github.com:kien/ctrlp.vim.git'
Plugin 'mbbill/undotree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'xolox/vim-misc.git'
Plugin 'xolox/vim-notes'

call vundle#end()
filetype plugin indent on

" Color scheme 
set termguicolors
set bg=dark
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='medium'
autocmd vimenter * colorscheme gruvbox

" NERDtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

"Indent guides 
set ts=4 sw=4 et
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray13 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=gray13 ctermbg=4

" ripgrep
if executable('rg')
    let g:rg_derive_root='true'
endif

" vim-notes
let g:notes_directories = ['~/notes']
let g:notes_suffix = '.txt'

" General rules
set backspace=indent,eol,start
set noerrorbells
set ruler
set number
set showcmd
set incsearch
set hlsearch
set nrformats=
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab " 4 spaces instead of tab
set smartindent
set clipboard=unnamedplus
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set cursorline
set laststatus=2
let mapleader = " "
syntax on

" Key mappings
map K gt
map J gT
map <C-s> :w<CR>
inoremap jj <ESC>
inoremap <C-l> <Del>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ps :Rg <CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" Git
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>ga :Git add .<CR>
nnoremap <leader>gs :Git status<CR>
nnoremap <leader>gd :Git diff<CR>

" YCM
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<Cr>

" Commands
command Q q
command W w
