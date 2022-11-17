local buffers = {
  name = "buffers",
  b = { "<cmd>Telescope buffers theme=get_dropdown<cr>", "buffers"},
  d = { ":bw!<cr>", "delete" },
  e = { ":TroubleToggle document_diagnostics", "errors/warnings"},
  h = { ":Startify<cr>", "home"},
  n = { ":bn<cr>", "next" },
  p = { ":bp<cr>", "previous"},
  s = { ":enew<cr>", "scratch/new" },
  u = { ":MundoToggle<cr>", "undo tree"},
  ["1"] = {":b1<cr>", "buffer 1"},
  ["2"] = {":b2<cr>", "buffer 2"},
  ["3"] = {":b3<cr>", "buffer 3"},
  ["4"] = {":b4<cr>", "buffer 4"},
  ["5"] = {":b5<cr>", "buffer 5"},
  ["6"] = {":b6<cr>", "buffer 6"},
  ["7"] = {":b7<cr>", "buffer 7"},
  ["8"] = {":b8<cr>", "buffer 8"},
  ["9"] = {":b9<cr>", "buffer 9"}
}

local comments = {
  "comments"
}

local files = {
  name = "files",
  d = {
    name = "dotfiles",
    k = {":edit ~/.config/nvim/lua/config/which-key.lua<cr>", "key maps"},
    p = {":edit ~/.config/nvim/lua/plugins.lua<cr>", "plugins"},
    v = {":edit ~/.config/nvim/init.lua<cr>", "vim"},
    R = {":Restart<cr>", "reload neovim"}
  },
  D = {":call delete(expand('%')) | bw!<cr>", "delete"},
  f = {"<cmd>Telescope file_browser theme=get_dropdown path=%:p:h<cr>", "browse files"},
  r = {"<cmd>Telescope oldfiles theme=get_dropdown<cr>", "recently opened"},
  R = {":call RenameFile()<cr>", "rename"},
  s = {":w<cr>", "save"},
  S = {":wa<cr>", "save all"},
  t = {":NvimTreeToggle<cr>", "file tree"}
}

local git = {
  name = "git",
  b = {":Gitsigns toggle_current_line_blame<cr>", "blame"},
  B = {":Git blame<cr>", "blame"},
  c = {
    name = "commits/conflicts",
    b = {"<cmd>Telescope git_bcommits<cr>", "buffer"},
    c = {"<cmd>Telescope git_commits<cr>", "commits"},
    r = {
      name = 'resolve conflict',
      b = {":ConflictMarkerBoth<cr>", "both"},
      B = {":ConflictMarkerBoth!<cr>", "both (reversed)"},
      o = {":ConflictMarkerOurselves<cr>", "ours"},
      t = {":ConflictMarkerThemselves<cr>", "theirs"},
      n = {":ConflictMarkerNone", "none"}
    }
  },
  s = {"<cmd>Telescope git_status theme=get_dropdown<cr>", "status"},
  S = {"<cmd>Telescope git_stash theme=get_dropdown<cr>", "stash"}
}

local help = {
  k = {"<cmd>Telescope keymaps<cr>", "key maps"},
  m = {"<cmd>Telescope man_pages<cr>", "man pages"},
  t = {"<cmd>Telescope help_tags<cr>", "help tags"},

}

local jump = {
  name = "jump",
  c = {":HopChar1<cr>", "jump to characters"},
  C = {":HopChar2<cr>", "jump to character"},
  j = {":HopChar1<cr>", "jump to word"},
  l = {":HopLine<cr>", "jump to line"},
  w = {":HopWord<cr>", "jump to word"},
}

local lsp = {
  name = "language/lsp",
  a = {"<cmd>Telescope lsp_code_actions theme=get_dropdown<cr>", "actions"},
  c = {
    name = "change case",
    c = {"<Plug>(abolish-coerce)c<cr>", "camel case", noremap = false},
    d = {"<Plug>(abolish-coerce)-", "dash case", noremap = false},
    D = {"<Plug>(abolish-coerce).", "dot case", noremap = false},
    m = {"<Plug>(abolish-coerce)m", "mixed case", noremap = false},
    s = {"<Plug>(abolish-coerce)s", "snake case", noremap = false},
    t = {"<Plug>(abolish-coerce)t", "title case", noremap = false},
    u = {"<Plug>(abolish-coerce)u", "upper case", noremap = false}
  },
  d = {
    name = "definitions",
    j = {"<cmd>Telescope lsp_definitions theme=get_dropdown<cr>", "jump"},
    p = {":Lspsaga preview_definition<cr>", "preview"},
  },
  e = {":SplitjoinSplit<cr>", "expand code segment"},
  E = {":SplitjoinJoin<cr>", "collapse code segment"},
  f = {":lua vim.lsp.buf.formatting()<cr>", "format"},
  l = {"<cmd>Telescope treesitter theme=get_dropdown<cr>", "search ast"},
  s = {
    name = "signature/symbols",
    d = {"<cmd>Telescope lsp_document_symbols theme=get_dropdown<cr>", "document symbols"},
    s = {":Lspsaga signature_help<cr>", "show signiture"},
    w = {"<cmd>Telescope lsp_workspace_symbols theme=get_dropdown<cr>", "workspace symbols"}
  },
  r = {"<cmd>Telescope lsp_references theme=get_dropdown<cr>", "find references"},
  R = {":Lspsaga rename<cr>", "rename"},
  q = {"<cmd>Telescope quickfix theme=get_dropdown<cr>", "quickfix"},
}

local project = {
  name = "project",
  f = {"<cmd>Telescope find_files theme=get_dropdown hidden=true<cr>", "files"},
  s = {"<cmd>Telescope live_grep theme=get_dropdown hidden=true<cr>", "search"},
  t = {":TodoTrouble <cr>", "todos"},
  R = {":lua require('spectre').open_visual()<cr>", "rename"}
}

local quit = {
  name = "quit",
  q = {":qa<cr>", "quit"},
  Q = {":qa!<cr>", "force quite"}
}

local search = {
  name = "search",
  c = {":noh<cr>", "clear"},
  s = {"<cmd>Telescope current_buffer_fuzzy_find theme=get_dropdown<cr>", "swoop"}
}

local text = {
  name = "text",
  s = {
    name = "spellchecking",
    a = {"<Plug>(add-spelunker-good-nmap)<cr>", "add to good list"},
    A = {":SpelunkerAddAll<cr>", "add all to good list"},
    b = {"<Plug>(add-spell-bad-nmap)<cr>", "add to bad list"},
    c = {"<Plug>(spelunker-correct-all)<cr>", "correct all"},
    C = {"<Plug>(spelunker-correct-all-feeling-lucky)<cr>", "correct all (feeling lucky)"},
    l = {"<Plug>(spelunker-correct-from-list)<cr>", "correct from list"},
    L = {"<Plug>(spelunker-correct-all-from-list)<cr>", "correct all from list"},
    t = {"<Plug>(spelunker-toggle-buffer)<cr>", "toggle buffer"},
    T = {"<Plug>(spelunker-toggle)<cr>", "toggle"}
  },
  w = {':call CleanWhiteSpaces()<cr>', "remove white spaces"}
}

local toggle_tabs = {
  name = "toggle/tabs",
  n = {":call ToggleLineNumbers()<cr>", "line numbers"},
  N = {":call ToggleNuMode()<cr>", "relative line numbers"},
  t = {"<cmd>Telescope tabs theme=get_dropdown<cr>", "swoop"},
  ["1"] = {":t1 1gt<cr>", "tab 1"},
  ["2"] = {":t2 2gt<cr>", "tab 2"},
  ["3"] = {":t3 3gt<cr>", "tab 3"},
  ["4"] = {":t4 4gt<cr>", "tab 4"},
  ["5"] = {":t5 5gt<cr>", "tab 5"},
  ["6"] = {":t6 6gt<cr>", "tab 6"},
  ["7"] = {":t7 7gt<cr>", "tab 7"},
  ["8"] = {":t8 8gt<cr>", "tab 8"},
  ["9"] = {":t9 9gt<cr>", "tab 9"}
}

local yank = {
  name = "yank",
  y = {"<cmd>Telescope registers theme=get_dropdown<cr>", "yank registers"}
}

local windows = {
  name = "windows",
  d = {"<C-W>c", "delete"},
  o = {"<C-W>w", "other"},
  ["="] = {"<C-W>=", "balance windows"},
  ["-"] = {"<C-W>s", "split horizontally"},
  ["/"] = {"<C-W>v", "split vertically"},
  ["1"] = {":1 wincmd w<cr>", "window 1"},
  ["2"] = {":2 wincmd w<cr>", "window 2"},
  ["3"] = {":3 wincmd w<cr>", "window 3"},
  ["4"] = {":4 wincmd w<cr>", "window 4"},
  ["5"] = {":5 wincmd w<cr>", "window 5"},
  ["6"] = {":6 wincmd w<cr>", "window 6"},
  ["7"] = {":7 wincmd w<cr>", "window 7"},
  ["8"] = {":8 wincmd w<cr>", "window 8"},
  ["9"] = {":9 wincmd w<cr>", "window 9"}
}

local normal_mappings = {
  ["<Tab>"] = {":b#<cr>", 'previous buffer'},
  ["<Space>"] = {"<cmd>Telescope commands<cr>", "components"},
  ["1"] = {":1 wincmd w<cr>", "window 1"},
  ["2"] = {":2 wincmd w<cr>", "window 2"},
  ["3"] = {":3 wincmd w<cr>", "window 3"},
  ["4"] = {":4 wincmd w<cr>", "window 4"},
  ["5"] = {":5 wincmd w<cr>", "window 5"},
  ["6"] = {":6 wincmd w<cr>", "window 6"},
  ["7"] = {":7 wincmd w<cr>", "window 7"},
  ["8"] = {":8 wincmd w<cr>", "window 8"},
  ["9"] = {":9 wincmd w<cr>", "window 9"},
  b = buffers,
  c = comments,
  f = files,
  g = git,
  h = help,
  j = jump,
  l = lsp,
  p = project,
  q = quit,
  s = search,
  t = toggle_tabs,
  w = windows,
  x = text,
  y = yank
}

local wk = require("which-key")
wk.register(normal_mappings, { prefix = "<leader>" })

local visual_mappings = {
  c = comments,
  s = {"<Plug>VSurround", "surround"}
}

wk.register(visual_mappings, { prefix = "<leader>", mode = "v"})

-- other mappings

local map = vim.api.nvim_set_keymap

map('n', '<Leader>w', ':write<CR>', {noremap = true})
map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
map('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
map('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
map('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})

map('v', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('v', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
