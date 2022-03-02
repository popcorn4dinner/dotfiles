require('telescope').setup{
  defaults = {
    color_devicons = true,
    file_sorter = require'telescope.sorters'.get_fzy_sorter,
    generic_sorter = require'telescope.sorters'.get_fzy_sorter,
    file_ignore_patterns = {
        ".git/.*",
        ".DS_Store"
    }
  }
}

require('telescope').load_extension 'file_browser'
