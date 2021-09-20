return require('packer').startup(function()
  use {'wbthomason/packer.nvim'}

  -- Editing
  use {
    'chaoren/vim-wordmotion',
    config = function()
      require('config.wordmotion')
    end
  }
  use {'tpope/vim-surround'}

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('config.treesitter')
    end
  }

  -- Language Packs
  use {'sheerun/vim-polyglot'}

  -- Spellchecking
  use {
    'kamykn/spelunker.vim',
    config = function()
      require('config.spelunker')
    end
  }

  -- Formatting
  use {
    'prettier/vim-prettier',
    ft = {'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'},
    run = 'yarn install'
  }

  -- File Tree
  use {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('config.nvim-tree')
    end,
    requires = {
      {'kyazdani42/nvim-web-devicons'}
    }
  }

  -- Start Screen
  use {
    'mhinz/vim-startify',
    config = function()
      require('config.startify')
    end
  }

  -- Colorscheme
  use {
    'navarasu/onedark.nvim',
    requires = {
      {'rktjmp/lush.nvim'}
    },
    config = function()
      require('config.colorscheme')
    end
  }

  -- Completion
  use {
    'hrsh7th/nvim-compe',
    config = function()
      require('config.compe')
    end
  }

  -- Finder
  use {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('config.telescope')
    end,
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'kyazdani42/nvim-web-devicons'}
    }
  }

  -- Key Mappings
  use {
    'folke/which-key.nvim',
    config = function()
      require('config.which-key')
    end
  }

  -- Statusline
  use {
    'glepnir/galaxyline.nvim',
    config = function()
      require('config.galaxyline')
    end,
    requires = {
      {'kyazdani42/nvim-web-devicons'}
    }
  }

  -- Icons
  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('config.devicons')
    end
  }

  -- Language Server Protocol (LSP)
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('config.lsp')
    end
  }

  use {kabouzeid/nvim-lspinstall'}

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  use {'tpope/vim-fugitive'}

  -- GitHub
  use {
    'pwntester/octo.nvim',
    config = function()
      require"octo".setup()
    end
  }

  use {'rhysd/conflict-marker.vim'}

  -- Auto-closing
  use {
    'tpope/vim-endwise',
    setup = function()
      require('config.endwise')
    end
  }
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
      require('config.completion')
    end
  }

  -- Snippets
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/vim-vsnip-integ'}
  use {'rafamadriz/friendly-snippets'}

  -- Global replace
  use {'windwp/nvim-spectre'}

  -- Diagnostics
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  -- Comments
  use {
    'terrortylor/nvim-comment',
    config = function(){
        require('nvim_comment').setup({
            -- Linters prefer comment and line to have a space in between markers
            marker_padding = true,
            -- should comment out empty or whitespace only lines
            comment_empty = true,
            -- Should key mappings be created
            create_mappings = true,
            -- Normal mode mapping left hand side
            line_mapping = "<leader>cc",
            -- Visual/Operator mapping left hand side
            operator_mapping = "<leader>c"
          })
      }
  }

  -- Navigagtion
  use {'phaazon/hop.nvim'}
  use {'brisbin/vim-mkdir'}
  use {'famiu/nvim-reload'}

  -- Refactoring
  use {'tpope/vim-surround'}
  use {'simnaamburt/vim-mundo'}
  use {'mg979/vim-visual-multi', {'banch': 'master'}}
  use {'glepnir/lspsaga.nvim'}

end)
