-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local Util = require("lazyvim.util")
local telescope = require("telescope.builtin")

vim.keymap.del("n", "<leader>e")
vim.keymap.del("n", "<leader>/")
vim.keymap.del("n", "<leader>E")
vim.keymap.del("n", "<leader>K") -- move to help

vim.keymap.set("n", "<leader>t", function()
  Util.terminal()
end, { desc = "Terminal (cwd)" })

--- Buffers

--- windows

for i = 1, 9 do
  vim.keymap.set("n", "<leader>w" .. i, i .. "<c-w><c-w>", { desc = "Window " .. i, remap = true })
end

-- vim.keymap.del("n", "<leader>w|")
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<leader>|")
vim.keymap.set("n", "<leader>w/", "<C-W>v", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<leader><tab>", "<cmd>e #<cr>", { desc = "Previous window", remap = true })

--- Files/Find

vim.keymap.set("n", "<leader>fs", ":w<CR>", { desc = "Save file", remap = true })
vim.keymap.set("n", "<leader>fS", ":w!<CR>", { desc = "Save all files", remap = true })

--- Search

--- Project

vim.keymap.set("n", "<leader>pt", function()
  require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
end, { desc = "File Tree", remap = true })
vim.keymap.set("n", "<leader>pS", ":w!<CR>", { desc = "Save all files", remap = true })

--- Hop / Jump
vim.keymap.set("n", "<leader>jj", ":HopWord<cr>", { desc = "Jump to word" })
vim.keymap.set("n", "<leader>jc", ":HopChar1<cr>", { desc = "Jump to character" })
vim.keymap.set("n", "<leader>jC", ":HopChar2<cr>", { desc = "Jump to bigram" })
vim.keymap.set("n", "<leader>js", ":HopPattern<cr>", { desc = "Jump to search pattern" })
vim.keymap.set("n", "<leader>jl", ":HopLine<cr>", { desc = "Jump to line" })
vim.keymap.set("n", "<leader>jL", ":HopLineStart<cr>", { desc = "Jump to beginning of line" })

local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "f", function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "F", function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "t", function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set("", "T", function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })
