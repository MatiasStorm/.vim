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
Plugin 'tpope/vim-fugitive'
" Plugin 'leafgarland/typescript-vim'
Plugin 'git@github.com:kien/ctrlp.vim.git'
Plugin 'mbbill/undotree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-syntastic/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'neoclide/coc.nvim'

call vundle#end()
filetype plugin indent on
filetype plugin on

" General rules
set backspace=indent,eol,start
set noerrorbells
set ruler
set number relativenumber
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

"syntastic
set statusline=[%n]\ %<%f%h%m
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']

" Color scheme 
set termguicolors
set bg=dark
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='medium'
autocmd vimenter * colorscheme gruvbox

" NERDtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_use_caching = 0
let g:ctrlp_custom_ignore = 'node_modules'

"Indent guides 
set ts=4 sw=4 et
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray13 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=gray13 ctermbg=4

" COC
nmap <leader>rn <Plug>(coc-rename)
nnoremap <leader>prn :CocSearch <C-R>=expand("<cword>")<CR><CR>

" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)


" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" Key mappings
map K gt
map J gT
map <C-s> :w<CR>
inoremap jj <ESC>
inoremap <C-l> <Right>
inoremap <C-a> <C-o>$
inoremap <C-i> <C-o>0
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

" COC -  User tab and S-tab to navigate the completion list (Has to be after Key mappings!!!!)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" Git

" Commands
command Q q
command W w
autocmd FileType c,cpp,python,ruby,java,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd FileType c,cpp,python,ruby,java,javascript autocmd FileWritePre <buffer> :%s/\s\+$//e
