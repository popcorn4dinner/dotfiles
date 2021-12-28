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

autopairs.setup{}
autopairs.add_rules(require('nvim-autopairs.rules.endwise-elixir'))
autopairs.add_rules(require('nvim-autopairs.rules.endwise-lua'))
autopairs.add_rules(require('nvim-autopairs.rules.endwise-ruby'))

require("nvim-autopairs.completion.compe").setup({
  map_cr = true,
  map_complete = true,
  auto_select = false
})

map('i', '<C-Space>', 'compe#complete()', { expr = true })
map('i', '<C-e>', [[compe#close('<C-e>')]], { expr = true })
map('i', '<Tab>', 'v:lua.tab_complete()', { expr = true })
map('s', '<Tab>', 'v:lua.tab_complete()', { expr = true })
map('i', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })
map('s', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })

