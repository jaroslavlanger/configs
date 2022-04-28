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
set listchars=eol:$,trail:?,tab:\\t

" Indentation: vim.fandom.com/wiki/Indenting_source_code
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set smarttab

set cursorline
set colorcolumn=80

setlocal spell!

" Keeps at least this number of lines above or below while scrolling.
set scrolloff=8

" Folding: vim.fandom.com/wiki/Folding
" Allows manual folding besides the indent folding.
autocmd BufReadPre * setlocal foldmethod=indent
autocmd BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
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
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release --locked
    else
      !cargo build --release --locked --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" Initialize plugin system
call plug#end()

" Color theme
let g:gruvbox_contrast_light = 'medium'
colorscheme gruvbox
set termguicolors
set background=light

let mapleader = " "

nnoremap <leader>n :NERDTreeToggle<CR>
" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <leader>m :NERDTreeMirror<CR>:NERDTreeFocus<CR>
let NERDTreeShowLineNumbers=1
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" CoC go-to code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" mzlogin/vim-markdown-toc options.
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'
" euclio/vim-markdown-composer
let g:markdown_composer_autostart = 0

" Vim settings from google.github.io/styleguide/pyguide.html
source $HOME/.config/nvim/google_python_style.vim
