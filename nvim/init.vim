call plug#begin('~/.config/nvim/plugged')
  Plug 'SirVer/ultisnips'
  Plug 'glepnir/galaxyline.nvim'
  Plug 'honza/vim-snippets'
  Plug 'hrsh7th/nvim-compe'
  Plug 'kamykn/spelunker.vim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'mhinz/vim-startify'
  Plug 'neovim/nvim-lspconfig'
  Plug 'npxbr/gruvbox.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-treesitter/playground'
  Plug 'rktjmp/lush.nvim'
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-fugitive'
  Plug 'windwp/nvim-autopairs'

  " Additional things Bastian uses
  Plug 'famiu/nvim-reload'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'tpope/vim-surround'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'windwp/nvim-spectre'
  Plug 'phaazon/hop.nvim'
  Plug 'rhysd/conflict-marker.vim'
  Plug 'pbrisbin/vim-mkdir'
  Plug 'simnalamburt/vim-mundo'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'folke/which-key.nvim'
  Plug 'terrortylor/nvim-comment'
  Plug '907th/vim-auto-save'
  Plug 'rmagatti/auto-session'
call plug#end()

let mapleader="\<SPACE>"

set updatetime=800
set foldlevelstart=99
set expandtab
set shiftwidth=2
set tabstop=2
set relativenumber
set cursorline
set linebreak
set foldmethod=expr
set mouse=a " Enable mouse
set ignorecase " Ignore case
set confirm " Disable 'no write'
set scrolloff=8 " Lines from the cursor
set incsearch " Move cursor during search
set splitright " Splits open on the right
set splitbelow " Splits open on the bottom
set wildmenu " Command line completion mode
set wildmode=full " Command line completion mode
set hlsearch " Highlight search results (enforce)
set showmatch " Show matching brackets/parenthesis
set noshowmode " Do not output message on the bottom
set inccommand=split " Show effects of command as you type in a split
set shortmess+=c
set completeopt=menuone,noselect
set clipboard=unnamedplus " Use system clipboard
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾
set signcolumn=yes " Always show the gutter for warnings/errors and git signs

set termguicolors
colorscheme gruvbox

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

let g:spelunker_check_type = 2
let g:spelunker_highlight_type = 2
let g:enable_spelunker_vim_on_readonly = 0

let g:UltiSnipsExpandTrigger="<s-cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1

let g:auto_save = 1

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

" Disable arrow keys
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Remove trailing whitespace before save
autocmd BufWritePre * %s/\s\+$//e

" Syntax of unknown file types
autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby
autocmd BufNewFile,BufRead *.tpl set filetype=handlebars

function! RenameFile()
  let current_name = expand(@%)
  let new_name = input('new name: ', current_name)
  execute 'GMove '.new_name
endfunction

function! ToggleNuMode()
  if(&rnu == 1)
  set nu
  else
  set rnu
  endif
endfunc

function! ToggleLineNumbers()
  if(&rnu == 1)
    set nornu
  elseif(&nu == 1)
    set nonu
  else
    set rnu
  endif
endfunc

function! CleanWhiteSpaces()
  execute '%s/\s\+$//e'
endfunction

lua require('lsp')
lua require('telescope-config')
lua require('statusline')
lua require('completion')
lua require('treesitter')
lua require('autopairs')
lua require('which-key-maps')
lua require('commenting')
lua require('gitsigns').setup()
