require('telescope').setup{
  defaults = {
    color_devicons = false,
    file_sorter = require'telescope.sorters'.get_fzy_sorter,
    generic_sorter = require'telescope.sorters'.get_fzy_sorter
  }
}
