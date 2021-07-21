local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')
local endwise = require('nvim-autopairs.ts-rule').endwise

_G.MUtils= {}

vim.g.completion_confirm_key = ""
MUtils.completion_confirm=function()
  if vim.fn.pumvisible() ~= 0  then
    if vim.fn.complete_info()["selected"] ~= -1 then
      return vim.fn["compe#confirm"](npairs.esc("<cr>"))
    else
      return npairs.esc("<cr>")
    end
  else
    return npairs.autopairs_cr()
  end
end

remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})

require("nvim-autopairs").setup()

npairs.add_rules({
  Rule('|', '|', 'ruby'),
  endwise('module', 'end', 'ruby', 'module'),
  endwise('class', 'end', 'ruby', 'class'),
  endwise('def', 'end', 'ruby', 'method'),
  endwise('if', 'end', 'ruby', 'if'),
  endwise('unless', 'end', 'ruby', 'unless'),
  endwise('case', 'end', 'ruby', 'case'),
  endwise('while', 'end', 'ruby', 'while'),
  endwise('until', 'end', 'ruby', 'until'),
  endwise('begin', 'end', 'ruby', 'begin'),
  endwise('do', 'end', 'ruby', 'block'),
})

