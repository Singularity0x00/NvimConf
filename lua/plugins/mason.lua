return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			automatic_enable = false,
			ensure_installed = {
				"lua_ls",
				--"html",
				"solidity_ls",
				"efm",
				--"ts_ls",
				"rust_analyzer",
				"gopls",
			},
		},
	},
}
