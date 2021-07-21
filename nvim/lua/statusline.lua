local gl = require("galaxyline")
local gls = gl.section
gl.short_line_list = { }

local colors = {
    bg = "#282828",
    line_bg = "#282828",
    fg = "#ebdbb2",
    green = "#b8bb26",
    orange = "#d65d0e",
    blue = "#83a598",
    red = "#fb4934",
    lightbg = "#504945",
    yellow = "#fabd2f"
}

local trim = function(str)
    return string.gsub(str, '^%s*(.-)%s*$', '%1')
end

local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 40 then
        return true
    end
    return false
end

gls.left = {
    {
        ModeLeftCap = {
            provider = function()
                return ""
            end,
            highlight = {colors.blue, colors.bg}
        }
    },
    {
        Mode = {
            provider = function()
                local alias = {
                    n = "NORMAL",
                    i = "INSERT",
                    c = "COMMAND",
                    V = "VISUAL",
                    [""] = "VISUAL",
                    v = "VISUAL",
                    R = "REPLACE"
                }
                return alias[vim.fn.mode()]
            end,
            highlight = {colors.bg, colors.blue}
        }
    },
    {
        ModeRightCap = {
            provider = function()
                return ""
            end,
            separator = " ",
            highlight = {colors.blue, colors.bg}
        }
    },
    {
        FileInfoLeftCap = {
            provider = function()
                return ""
            end,
            highlight = {colors.lightbg, colors.bg}
        }
    },
    {
        FileIcon = {
            provider = "FileIcon",
            condition = buffer_not_empty,
            highlight = {colors.fg, colors.lightbg}
        }
    },
    {
        FileName = {
            provider = function()
                return trim(require('galaxyline.provider_fileinfo').get_current_file_name())
            end,
            condition = buffer_not_empty,
            highlight = {colors.fg, colors.lightbg}
        }
    },
    {
        FileInfoRightCap = {
            provider = function()
                return ""
            end,
            separator = " ",
            highlight = {colors.lightbg, colors.bg}
        }
    },
    {
        DiffAdd = {
            provider = "DiffAdd",
            condition = checkwidth,
            icon = "   ",
            highlight = {colors.yellow, colors.line_bg}
        }
    },
    {
        DiffModified = {
            provider = "DiffModified",
            condition = checkwidth,
            icon = " ",
            highlight = {colors.orange, colors.line_bg}
        }
    },
    {
        DiffRemove = {
            provider = "DiffRemove",
            condition = checkwidth,
            icon = " ",
            highlight = {colors.red, colors.line_bg}
        }
    },
    {
        LeftEnd = {
            provider = function()
                return " "
            end,
            separator = " ",
            separator_highlight = {colors.line_bg, colors.line_bg},
            highlight = {colors.line_bg, colors.line_bg}
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
            highlight = {colors.line_bg, colors.line_bg}
        }
    },
    {
        DiagnosticWarn = {
            provider = "DiagnosticWarn",
            icon = "  ",
            highlight = {colors.blue, colors.bg}
        }
    }
}

gls.right = {
    {
        GitIcon = {
            provider = function()
                return "  "
            end,
            condition = require("galaxyline.provider_vcs").check_git_workspace,
            highlight = {colors.green, colors.line_bg}
        }
    },
    {
        GitBranch = {
            provider = "GitBranch",
            condition = require("galaxyline.provider_vcs").check_git_workspace,
            highlight = {colors.green, colors.line_bg}
        }
    },
    {
        Space = {
            provider = function()
                return " "
            end,
            highlight = {colors.line_bg, colors.line_bg}
        }
    },
    {
        LineInfoLeftCap = {
            provider = function()
                return ""
            end,
            highlight = {colors.fg, colors.bg}
        }
    },
    {
        LineColumn = {
            provider = function()
                local line = vim.fn.line('.')
                local column = vim.fn.col('.')
                return line .. ':' .. column
            end,
            separator_highlight = {colors.red, colors.red},
            highlight = {colors.bg, colors.fg}
        }
    },
    {
        LineInfoRightCap = {
            provider = function()
                return ""
            end,
            highlight = {colors.fg, colors.bg}
        }
    }
}
