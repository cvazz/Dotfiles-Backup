" enables syntax highlighting
syntax on
"
" columns used for the line number
set numberwidth=4

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase


" Python Support

let g:python3_host_prog='/home/cvaz/miniconda3/bin/python'


" ...general settings

call plug#begin('~/.config/nvim/plugged')

" Color scheme
Plug 'gruvbox-community/gruvbox'
" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" Comments
Plug 'terrortylor/nvim-comment'

" Lightline
Plug 'itchyny/lightline.vim'

call plug#end()

lua require('cvaz')


" declare your color scheme
colorscheme gruvbox
" Use this for dark color schemes
set background=dark


