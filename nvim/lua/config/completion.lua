local autopairs = require('nvim-autopairs')

local map = vim.api.nvim_set_keymap

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-n>'
  elseif vim.fn.call('vsnip#available', {1}) == 1 then
    return t '<Plug>(vsnip-expand-or-jump)'
  elseif check_back_space() then
    return t '<Tab>'
  else
    return vim.fn['compe#complete']()
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-p>'
  elseif vim.fn.call('vsnip#jumpable', {-1}) == 1 then
    return t '<Plug>(vsnip-jump-prev)'
  else
    return t '<S-Tab>'
  end
end

_G.snippet_force_expand = function()
  if vim.fn.call('vsnip#expandable', {}) == 1 then
    return t '<Plug>(vsnip-expand)'
  else
    return autopairs.esc('<s-cr>')
  end
end

_G.completion_confirm = function()
  if vim.fn.pumvisible() ~= 0  then
    if vim.fn.complete_info()['selected'] ~= -1 then
      return vim.fn['compe#confirm'](autopairs.esc('<cr>'))
    else
      return autopairs.esc('<cr>')
    end
  else
    return autopairs.autopairs_cr() .. autopairs.esc('<Plug>DiscretionaryEnd')
  end
end

map('i', '<C-Space>', 'compe#complete()', { expr = true })
map('i', '<C-e>', [[compe#close('<C-e>')]], { expr = true })
map('i', '<Tab>', 'v:lua.tab_complete()', { expr = true })
map('s', '<Tab>', 'v:lua.tab_complete()', { expr = true })
map('i', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })
map('s', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })
map('i', '<CR>','v:lua.completion_confirm()', { expr = true, noremap = false })
map('i', '<S-CR>', 'v:lua.snippet_force_expand()', { expr = true })
