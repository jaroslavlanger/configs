" This config file is based on Ben Awad's init.vim:
" gist.github.com/benawad/b768f5a5bbd92c8baabd363b7e79786f

" Specify a directory for plugins
call plug#begin('~/.vim/plugins')

" Smart completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Color theme.
Plug 'morhetz/gruvbox'

" Plugin to generate table of contents for Markdown files.
Plug 'mzlogin/vim-markdown-toc'

" Initialize plugin system
call plug#end()

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
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

set cursorline
set colorcolumn=80

" Color theme
let g:gruvbox_contrast_light = 'medium'
colorscheme gruvbox
set termguicolors
set background=light

setlocal spell!

" mzlogin/vim-markdown-toc options.
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'

" Vim settings from google.github.io/styleguide/pyguide.html
source $HOME/.config/nvim/google_python_style.vim
