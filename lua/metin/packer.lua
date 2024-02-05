-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-cmdline'},
		  {'hrsh7th/cmp-path'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }


  use({"stevearc/dressing.nvim"})


  use({
	  "L3MON4D3/LuaSnip",
	  -- follow latest release.
	  tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	  -- install jsregexp (optional!:).
	  run = "make install_jsregexp"
  })

  use({
	  "kalvinpearce/ShaderHighlight"
  })

  use({
	  "windwp/nvim-autopairs",
	  config = function() require("nvim-autopairs").setup {} end

  })

  use({
	  "yorickpeterse/nvim-window",
	  config = function() require("nvim-window").setup({
		  chars = {
			'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
			'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
		  },

		  -- A group to use for overwriting the Normal highlight group in the floating
		  -- window. This can be used to change the background color.
		  normal_hl = 'Normal',

		  -- The highlight group to apply to the line that contains the hint characters.
		  -- This is used to make them stand out more.
		  hint_hl = 'Bold',

		  -- The border style to use for the floating window.
		  border = 'single'
	  }) end
  })

  use {
	  'smoka7/hop.nvim',
	  tag = '*', -- optional but strongly recommended
	  config = function()
		  -- you can configure Hop the way you like here; see :h hop-config
		  require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
	  end
  }

  use ({"rebelot/kanagawa.nvim"})

end)

