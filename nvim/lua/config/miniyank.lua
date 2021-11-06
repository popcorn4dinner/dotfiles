local map = vim.api.nvim_set_keymap

options = { noremap = true }
map('n', 'p', '<Plug>(miniyank-autoput)', options)
map('n', 'P', '<Plug>(miniyank-autoPut)', options)

map('n', 'Y', '<leader>n <Plug>(miniyank-cycle)', options)
map('n', 'c-Y', '<Plug>(miniyank-cycleback)', options)
