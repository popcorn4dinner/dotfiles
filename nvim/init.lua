local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
local g = vim.g
local o = vim.o

g.mapleader = ' '

o.updatetime = 800
o.foldlevelstart = 99
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.relativenumber = true
o.cursorline = true
o.linebreak = true
o.mouse = 'a'
o.ignorecase = true
o.confirm = true
o.scrolloff = 8
o.incsearch = true
o.splitright = true
o.splitbelow = true
o.wildmenu = true
o.wildmode = 'full'
o.hlsearch  = true
o.showmatch = true
o.showmode = false
o.inccommand = 'split'
o.shortmess = o.shortmess .. 'c'
o.completeopt = 'menuone,noselect'
o.clipboard = 'unnamedplus'
o.undofile = true
o.undodir = vim.fn.getenv('HOME') .. '/.config/nvim/undodir'
o.fillchars = 'fold: ,vert:│,eob: ,msgsep:‾'
o.signcolumn = 'yes'
o.timeoutlen = 300

-- Remove trailing whitespace before save
cmd [[autocmd BufWritePre * %s/\s\+$//e]]

cmd [[
  autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby
  autocmd BufNewFile,BufRead *.tpl set filetype=handlebars
]]

cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

require('install-packer')
require('plugins')
