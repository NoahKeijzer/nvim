-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- lua/plugins/rose-pine.lua
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	})

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	-- lsp config
    use('neovim/nvim-lspconfig')
    use('hrsh7th/cmp-nvim-lsp')
    use({'glepnir/lspsaga.nvim', branch = 'main'})
    use('jose-elias-alvarez/typescript.nvim')
    use('onsails/lspkind.nvim')
    use('nvim-tree/nvim-tree.lua')
	use('kyazdani42/nvim-web-devicons')
	-- autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	-- snippets
	use("L3MON4D3/LuaSNIP")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

    use('christoomey/vim-tmux-navigator')
end)
