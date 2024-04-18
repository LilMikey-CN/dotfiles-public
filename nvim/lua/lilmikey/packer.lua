-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
      'christoomey/vim-tmux-navigator',
      lazy = false,
  }
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
  use("nvim-treesitter/playground")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},

	  }
  }

  use({
	  'folke/tokyonight.nvim',
	  as = 'tokyonight',
	  config = function()
		  vim.cmd('colorscheme tokyonight')
	  end
  })

  use {
      "windwp/nvim-autopairs",
      config = function ()
        require("nvim-autopairs").setup {}
      end
  }

  -- Auto tag
  use {
      "windwp/nvim-ts-autotag",
      wants = "nvim-treesitter",
      event = "InsertEnter",
      config = function()
          require("nvim-ts-autotag").setup { enable = true }
      end,
  }

  use("github/copilot.vim")

  use('norcalli/nvim-colorizer.lua')

  use {
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- code snippets
  use("michaelrommel/nvim-silicon")

  use "nvim-lua/plenary.nvim"
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  }

end)

