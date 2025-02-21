return {
  {
    "telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      -- disable the keymap to grep files
      -- {"<leader>/", false},
      -- change a keymap
      { "<leader>bb", "<cmd>Telescope buffers<cr>", desc = "Find Buffer" },
      { "<leader>fb", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", desc = "File Browser" },
      { "<leader>cd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
      { "<leader>pd", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },
      { "<leader>pf", "<cmd>Telescope files<cr>", desc = "Project Files" },
      { "<leader>ps", "<cmd>Telescope live_grep<cr>", desc = "Search Project" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_strategy = "horizontal",
          layout_config = {
            height = 0.4,
          },
          border = true,
          sorting_strategy = "ascending",
          pickers = {
            find_files = {
              theme = "dropdown",
            },
          },
        },
      })
    end,
  },
}
