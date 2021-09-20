local gl = require("galaxyline")

local condition = require('galaxyline.condition')
local fileinfo = require('galaxyline.provider_fileinfo')
local gls = gl.section

gl.short_line_list = {'startify', 'NvimTree'}

local colors = {
  bg = "#292929",
  fg = "#ebdbb2",
  green = "#b8bb26",
  orange = "#fe8019",
  blue = "#83a598",
  red = "#fb4934",
  gray = "#3b3735",
  yellow = "#fabd2f",
  purple = "#d4879c",
  aqua = "#8ec07c"
}
local colors = {
    bg = "#282c34",
    line_bg = "#282c34",
    fg = "#abb2bf",
    green = "#98c379",
    orange = "#d19a66",
    blue = "#61afef",
    red = "#e86671",
    gray = "#3b3f4c",
    yellow = "#e5c07b",
    purple = "#d4879c",
    aqua = "#8ec07c"
}

local mode_colors = {
  n = colors.blue,
  i = colors.green,
  ic = colors.green,
  v = colors.orange,
  [''] = colors.orange,
  V = colors.orange,
  c = colors.red,
  cv = colors.red,
  ce = colors.red
}

local checkwidth = function()
  local squeeze_width = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

local filename = function()
  local file = vim.fn.expand('%:t')
  if vim.fn.empty(file) == 1 then return '' end

  if vim.bo.modified then
    vim.api.nvim_command('hi GalaxyFileName guifg=' .. colors.orange .. ' guibg=' .. colors.bg)
    vim.api.nvim_command('hi GalaxyShortFileName guifg=' .. colors.orange .. ' guibg=' .. colors.bg)
  else
    vim.api.nvim_command('hi GalaxyFileName guifg=' .. colors.fg .. ' guibg=' .. colors.bg)
    vim.api.nvim_command('hi GalaxyShortFileName guifg=' .. colors.fg .. ' guibg=' .. colors.bg)
  end


  return file .. ' '
end

gls.left = {
  {
    Mode = {
      provider = function()
        local mode = vim.fn.mode()
        local mode_color = mode_colors[mode] or colors.bg

        vim.api.nvim_command('hi GalaxyLeftCap guifg='..colors.bg ..' guibg='..mode_color)
        vim.api.nvim_command('hi GalaxyRightCap guifg='..colors.bg ..' guibg='..mode_color)

        return ""
      end
    }
  },
  {
    LeftCap = {
      provider = function()
        return " "
      end,
      separator = " ",
      separator_highlight = {colors.bg, colors.bg}
    }
  },
  {
    FileIcon = {
      provider = fileinfo.get_file_icon,
      highlight = {fileinfo.get_file_icon_color, colors.bg}
    }
  },
  {
    FileName = {
      provider = filename,
      condition = condition.buffer_not_empty
    }
  },
  {
    LineColumn = {
      provider = function()
        local line = vim.fn.line('.')
        local column = vim.fn.col('.')
        return line .. ':' .. column .. ' '
      end,
      highlight = {colors.fg, colors.bg}
    }
  },
  {
    LeftEnd = {
      provider = function()
        return " "
      end,
      separator = " ",
      separator_highlight = {colors.bg, colors.bg},
      highlight = {colors.bg, colors.bg}
    }
  },
  {
    DiagnosticError = {
      provider = "DiagnosticError",
      icon = "  ",
      highlight = {colors.red, colors.bg}
    }
  },
  {
    Space = {
      provider = function()
        return " "
      end,
      highlight = {colors.bg, colors.bg}
    }
  }
}

gls.right = {
  {
    DiffAdd = {
      provider = "DiffAdd",
      condition = checkwidth,
      icon = " ",
      highlight = {colors.green, colors.bg}
    }
  },
  {
    DiffModified = {
      provider = "DiffModified",
      condition = checkwidth,
      icon = " ",
      highlight = {colors.yellow, colors.bg}
    }
  },
  {
    DiffRemove = {
      provider = "DiffRemove",
      condition = checkwidth,
      icon = " ",
      highlight = {colors.red, colors.bg}
    }
  },
  {
    GitBranch = {
      provider = "GitBranch",
      condition = require("galaxyline.provider_vcs").check_git_workspace,
      icon = "  ",
      highlight = {colors.purple, colors.bg}
    }
  },
  {
    Space = {
      provider = function()
        return " "
      end,
      highlight = {colors.bg, colors.bg}
    }
  },
  {
    RightCap = {
      provider = function()
        return " "
      end,
    }
  }
}

gls.short_line_left = {
  {
    ShortLeftCap = {
      provider = function()
        return "   "
      end,
      highlight = {colors.bg, colors.bg}
    },
  },
  {
    ShortFileName = {
      provider = filename,
      condition = condition.buffer_not_empty,
      highlight = "GalaxyFileName"
    }
  }
}
