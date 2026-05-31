--return {
--	{
--		"nvim-treesitter/nvim-treesitter",
--		opts = {
--			install_dir = vim.fn.stdpath("data") .. "/home/singularity0/.local/share/nvim/site",
--			ensure_installed = {
--				"c",
--				"lua",
--				"rust",
--				"go",
--				"html",
--				"css",
--				"javascript",
--				"solidity",
--				"clarity",
--			},
--
--			sync_install = true,
--			auto_install = true,
--			highlight = {
--				enable = true,
--				additional_vim_regex_highlighting = true,
--			},
--		},
--	},
--}
return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function(_, opts)
			vim.filetype.add({ extension = { clar = "clarity" } })

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "clarity",
				callback = function(args)
					vim.treesitter.start(args.buf, "clarity")
				end,
			})

			require("nvim-treesitter").setup(opts)
		end,
		opts = {
			install_dir = vim.fn.stdpath("data") .. "/home/singularity0/.local/share/nvim/site",
			ensure_installed = {
				"c",
				"lua",
				"rust",
				"go",
				"html",
				"css",
				"javascript",
				"solidity",
			},
			sync_install = true,
			auto_install = true,
			highlight = { enable = true, additional_vim_regex_highlighting = true },
		},
	},
}
