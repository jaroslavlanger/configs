" Inspirations:
" gist.github.com/benawad/b768f5a5bbd92c8baabd363b7e79786f
" github.com/ThePrimeagen/.dotfiles
" realpython.com/vim-and-python-a-match-made-in-heaven/

syntax on

" Searching case sensitivity: vim.fandom.com/wiki/Searching
set ignorecase
set smartcase

" Show line numbers: vim.fandom.com/wiki/Display_line_numbers
set number!
set relativenumber

" Show invisible characters: vim.fandom.com/wiki/Highlight_unwanted_spaces
set list
set listchars=eol:$,trail:?

" Indentation: vim.fandom.com/wiki/Indenting_source_code
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab

set cursorline
set colorcolumn=80

setlocal spell!

" Keeps at least this number of lines above or below while scrolling.
set scrolloff=8

" Folding: vim.fandom.com/wiki/Folding
set foldmethod=indent
set foldlevel=99
" Make views automatic: vim.fandom.com/wiki/Make_views_automatic
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugins')

" Color theme
Plug 'morhetz/gruvbox'
" Git integration
Plug 'tpope/vim-fugitive'
" File system tree browsing
Plug 'scrooloose/nerdtree'
" Smart completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin to generate table of contents for Markdown files.
Plug 'mzlogin/vim-markdown-toc'

" Initialize plugin system
call plug#end()

" Color theme
let g:gruvbox_contrast_light = 'medium'
colorscheme gruvbox
set termguicolors
set background=light

let mapleader = " "

nnoremap <leader>n :NERDTreeToggle<CR>

" CoC go-to code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" mzlogin/vim-markdown-toc options.
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'

" Vim settings from google.github.io/styleguide/pyguide.html
source $HOME/.config/nvim/google_python_style.vim
