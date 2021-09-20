require'nvim-treesitter.configs'.setup {
  ensure_installed = 'maintained',
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<TAB>",
      scope_incremental = "grc",
      node_decremental = "<S-TAB>",
    }
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.elixir = {
  install_info = {
    url = "/Users/bastian/.tree-sitter/custom/tree-sitter-elixir",
    files = {"src/parser.c"}
  },
  filetype = "ex", -- if filetype does not agrees with parser name
  used_by = {"exs", "ex"} -- additional filetypes that use this parser
}

