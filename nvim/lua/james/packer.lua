-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use("sbdchd/neoformat")

  -- Colorscheme section
  use 'folke/tokyonight.nvim'
  use 'gruvbox-community/gruvbox'

  -- All the things
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use("hrsh7th/cmp-nvim-lsp") -- LSP completion source
  use("hrsh7th/nvim-cmp")  -- Completion Framework

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'

  use("tzachar/cmp-tabnine", { run = "./install.sh" })
  use("onsails/lspkind-nvim")
  use("simrat39/symbols-outline.nvim")

  use("nvim-lua/lsp_extensions.nvim")
  use("glepnir/lspsaga.nvim")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")

  -- Undotree
  use("mbbill/undotree")

  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- IDE
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
  use("nvim-treesitter/playground")
  use("nvim-treesitter/nvim-treesitter-context")
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Pacler Management tool
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Rust Related
  use 'simrat39/rust-tools.nvim'

  -- JS colors
  use 'norcalli/nvim-colorizer.lua'
end)

