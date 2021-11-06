vim.g['yoinkIncludeDeleteOperations'] = 1
vim.g['yoinkMoveCursorToEndOfPaste'] = 1


local map = vim.api.nvim_set_keymap

options = { noremap = true }
map('n', '<c-p>', '<plug>(YoinkPostPasteSwapBack)', options)
map('n', '<c-P>', '<plug>(YoinkPostPasteSwapForward)', options)

map('n', 'y', '<plug>(YoinkYankPreserveCursorPosition)', options)
map('x', 'y', '<plug>(YoinkYankPreserveCursorPosition)', options)

map('n', 'p', '<plug>(YoinkPaste_p)', options)
map('n', 'P', '<plug>(YoinkPaste_P)', options)

map('n', 'gp', '<plug>(YoinkPaste_gp)', options)
map('n', 'gP', '<plug>(YoinkPaste_gP)', options)
