return {
	on_attach = ON_ATTACH,
	--	capabilities = CAPABILITIES,
	-- cmd = { "solidity-ls", "--stdio" },
	cmd = { "vscode-solidity-server", "--stdio" },
	filetypes = { "solidity", "sol" },
	root_markers = { "foundry.toml", "hardhat.config.*", ".git" },
	-- settings = {
	-- 	solidity = {
	-- 		compileUsingRemoteVersion = "latest",
	-- 		defaultCompiler = "remote",
	-- 		enabledAsYouTypeCompilationErrorCheck = true,
	-- -- 	},
	-- },
}
