local colorscheme = 'onedark'

vim.o.termguicolors = true

vim.cmd('colorscheme ' .. colorscheme)

vim.cmd [[hi StatusLine guifg=#292929]]
vim.cmd [[hi StatusLineNC guifg=#292929]]
vim.cmd [[hi VertSplit guibg=#292929 guifg=#292929]]
vim.cmd [[hi CursorLineNr guibg=NONE guifg=#EBDBB2]]
vim.cmd [[hi Error gui=NONE]]
vim.cmd [[hi SpelunkerSpellBad guifg=#EBDBB2 guibg=#FB4934]]
vim.cmd [[hi Pmenu ctermfg=254 ctermbg=237 cterm=NONE]]
vim.cmd [[hi PmenuSel ctermfg=237 ctermbg=254 cterm=NONE]]

-- Show CursorLine only in active window
vim.cmd [[
  augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
  augroup END
]]
