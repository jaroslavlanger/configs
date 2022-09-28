-- Set Options
-- Show line numbers: vim.fandom.com/wiki/Display_line_numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Keeps at least this number of lines above or below while scrolling.
vim.opt.scrolloff = 8

-- Searching case sensitivity: vim.fandom.com/wiki/Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Show invisible characters: vim.fandom.com/wiki/Highlight_unwanted_spaces
vim.opt.list = true
vim.opt.listchars = 'eol:$,trail:?,tab:\\t'

-- Line and column highlighting: vim.fandom.com/wiki/Highlight_current_line
vim.opt.cursorline = true
vim.opt.colorcolumn = {80}

-- Indentation: vim.fandom.com/wiki/Indenting_source_code
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 8
vim.opt.smarttab = true

vim.opt.spell = true

vim.g.mapleader = ' '


-- Remaps
vim.keymap.set({'n', 'v'}, '<Space>', 'NOP')
vim.keymap.set('n', '<leader>n', ':Ex<CR>')
vim.keymap.set({'n', 'v'}, '<leader>p', '\"_c<Esc>p')


-- Plugins
-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox'
end)
