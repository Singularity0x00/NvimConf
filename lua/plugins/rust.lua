return {
	{
		"rust-lang/rust.vim",
		filetype = "rust",
		--	opts = function()
		--		vim.g.rustfmt_autosave = 1
		--	end,
	},
	{
		"saecki/crates.nvim",
		filetype = "rust",
		opts = {},
	},
	{
		"mrcjkb/rustaceanvim",
		-- To avoid being surprised by breaking changes,
		-- I recommend you set a version range
		version = "^9",
		-- This plugin implements proper lazy-loading (see :h lua-plugin-lazy).
		-- No need for lazy.nvim to lazy-load it.
		lazy = false,
	},
}
