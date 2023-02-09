vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use {
	  'nvim-tree/nvim-tree.lua',
  	requires = {
    	'nvim-tree/nvim-web-devicons', -- optional, for file icons
  		},
	}
	use 'tpope/vim-fugitive'

	use 'lewis6991/gitsigns.nvim'

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

	use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines

	use { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
  requires = {
      -- Automatically install LSPs to stdpath for neovim
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
    'j-hui/fidget.nvim',
   },
  }	
  	use { "ellisonleao/gruvbox.nvim" }

    use {"terrortylor/nvim-comment"}

    use {'neoclide/coc.nvim', branch = 'release'}

    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
end)
