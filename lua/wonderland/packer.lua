-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Parser generator for vim
  --
  use({
    'nvim-treesitter/nvim-treesitter',
    { run = ':TSUpdate' }
  })

  -- Lua Utils
  --
  use({ 'nvim-lua/plenary.nvim' })

  -- Buffer to jump between files
  --
  use({ 'ThePrimeagen/harpoon' })

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup()
    end
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use({
    "NTBBloodbath/galaxyline.nvim",
    -- your statusline
    config = function()
      require("galaxyline.themes.eviline")
    end,
    -- some optional icons
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  })

  use({
    's1n7ax/nvim-window-picker',
    tag = 'v1.*'
  })

  use('mbbill/undotree')

  -- Like VSCode breadcrumb bar
  --
  use({
    "utilyre/barbecue.nvim",
    -- branch = "dev", -- omit this if you only want stable updates
    requires = {
      "neovim/nvim-lspconfig",
      "smiteshp/nvim-navic",
      "kyazdani42/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons", -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  })

  -- Tab line manager
  --
  use({
    'crispgm/nvim-tabline',
    config = function()
      require('tabline').setup({})
    end,
  })

  -- Session management
  --
  use {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      }
    end
  }

  -- Editor config
  --
  use('gpanders/editorconfig.nvim')

  -- -----------
  -- Git libs
  -- -----------

  use({ 'tpope/vim-fugitive' })

  use({
    'lewis6991/gitsigns.nvim',
  })

  -- use({'APZelos/blamer.nvim', config = function()
  -- vim.g.blamer_enabled = 1
  -- vim.g.blamer_delay = 500
  -- end})


  -- Themes
  --

  -- use({
  --   'rose-pine/neovim',
  --   as = 'rose-pine',
  --   config = function()
  --     require('rose-pine/neovim').setup({
  --       dark_variant = 'main',
  --     	-- dark_variant = 'dawn',
  --     })
  --     vim.o.background = 'light'
  --     vim.cmd('colorscheme rose-pine')
  --   end
  -- })

  -- use { 'dracula/vim', as = 'dracula' }

  use "EdenEast/nightfox.nvim"

  --

end)
