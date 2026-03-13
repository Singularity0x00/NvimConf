-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })
	use({
		"nvim-treesitter/playground",
	})
	use({
		"theprimeagen/harpoon",
	})
	use("stevearc/conform.nvim")
	use("mfussenegger/nvim-lint")
	use("mfussenegger/nvim-dap")
	use({ "rcarriga/nvim-dap-ui", requires = { "nvim-neotest/nvim-nio" } })
	use({
		"mbbill/undotree",
	})
	use({
		"nvimdev/lspsaga.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("lspsaga").setup({})
		end,
	})

	use({
		"tpope/vim-fugitive",
	})
	use({
		"lervag/vimtex",
	})
	--use({
	--	"oncomouse/lushwal",
	--	requires = { { "rktjmp/lush.nvim", opt = true }, { "rktjmp/shipwright.nvim", opt = true } },
	--})
	use({ "RedsXDD/neopywal.nvim", as = "neopywal" })
	use({ "uZer/pywal16.nvim", as = "pywal16" })
	--	use({
	--		"AlphaTechnolog/pywal.nvim",
	--		as = "pywal",
	--	})
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	use({
		"dhruvasagar/vim-table-mode",
	})
	use({ "vyperlang/vim-vyper" })
	use({
		"Saimo/peek.nvim",
		as = "peek",
		run = "deno task --quiet build",
	})
	-- use({
	-- 	"rmagatti/goto-preview",
	-- 	dependencies = { "rmagatti/logger.nvim" },
	-- 	event = "BufEnter",
	-- 	config = true,
	-- })
	use({
		"creativenull/efmls-configs-nvim",
		tag = "v1.*", -- tag is optional, but recommended
		requires = { "neovim/nvim-lspconfig" },
	})
	-- use({
	-- 	"nvimdev/lspsaga.nvim",
	-- 	after = "nvim-lspconfig",
	-- })

	use({
		"rachartier/tiny-inline-diagnostic.nvim",
		priority = 1000, -- needs to be loaded in first
	})
	use({
		"MeanderingProgrammer/render-markdown.nvim",
		after = { "nvim-treesitter" },
		requires = { "echasnovski/mini.icons", opt = true }, -- if you use standalone mini plugins
		-- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
	})
	-- use({
	-- 	"nvimdev/dashboard-nvim",
	-- 	event = "VimEnter",
	-- 	-- requires = { "nvim-tree/nvim-web-devicons" },
	-- })
	use({
		"goolord/alpha-nvim",
		requires = { "BlakeJC94/alpha-nvim-fortune" },
		-- dependencies = { 'echasnovski/mini.icons' },
		dependencies = { "nvim-tree/nvim-web-devicons" },
	})
	--use("noir-lang/noir-nvim")
	use({
		"rust-lang/rust.vim",
		{
			"saecki/crates.nvim",
			filetype = "rust",
			config = function(opts)
				local crates = require("crates")
				crates.setup(opts)
			end,
		},
		filetype = "rust",
		config = function()
			vim.g.rustfmt_autosave = 1
		end,
		"simrat39/rust-tools.nvim",
		dependencies = "neovim/lspconfig",
	})
	-- use("FuelLabs/sway.vim")
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		{
			"L3MON4D3/LuaSnip",
			requires = { "rafamadriz/friendly-snippets" },
		},
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/nvim-cmp",
		{
			--		"tzachar/cmp-tabnine",
			run = "./install.sh",
			requires = "hrsh7th/nvim-cmp",
		},

		"hrsh7th/cmp-nvim-lsp",
	})
	--use({ "codota/tabnine-nvim", run = "./dl_binaries.sh" })
	-- use {'neoclide/coc.nvim', branch = 'release'}
	use({ "RRethy/vim-illuminate" })

	use({
		"pwntester/codeql.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/telescope.nvim",
			"kyazdani42/nvim-web-devicons",
			{
				"s1n7ax/nvim-window-picker",
				tag = "v1.*",
				config = function()
					require("window-picker").setup({
						autoselect_one = true,
						include_current = false,
						filter_rules = {
							bo = {
								filetype = {
									"codeql_panel",
									"codeql_explorer",
									"qf",
									"TelescopePrompt",
									"TelescopeResults",
									"notify",
									"noice",
									"NvimTree",
									"neo-tree",
								},
								buftype = { "terminal" },
							},
						},
						current_win_hl_color = "#e35e4f",
						other_win_hl_color = "#44cc41",
					})
				end,
			},
		},
		config = function()
			require("codeql").setup({})
		end,
	})
end)
