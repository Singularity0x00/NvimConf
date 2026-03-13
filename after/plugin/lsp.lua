require("mason").setup()
require("mason-lspconfig").setup({
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
})

ON_ATTACH = function(_, _)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "<leader>gi", ":Lspsaga finder tyd+ref+imp+def<CR>")
end

CAPABILITIES = require("cmp_nvim_lsp").default_capabilities()
--local lspconfig = require("lspconfig")

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
		end
	end,
})

vim.lsp.enable({ "efm", "solidity_ls", "rust-analyzer", "gopls", "lua_ls", "html" })
--local lspconfig = vim.lsp.config("*", {})
--local noir = require("noir")
--

-- require("lspsaga").setup({
-- 	finder = {
-- 		filter = {
-- 			["textDocument/references"] = function(client_id, result)
-- 				-- your logic
-- 				return true
-- 			end,
-- 		},
-- 	},
-- })

--vim.lsp.config("lua_ls", {
--	on_attach = on_attach,
--	capabilities = capabilities,
--})
-- lspconfig.jedi_language_server.setup({
--
-- 	on_attach = on_attach,
-- 	capabilities = capabilities,
-- })

--vim.lsp.config.html = {
--	--	on_attach = ON_ATTACH,
--	--	capabilities = CAPABILITIES,
--}

--	on_attach = on_attach,
--	capabilities = capabilities,
--})

--local solhint = require("efmls-configs.linters.solhint")
--local golangci = require("efmls-configs.linters.golangci_lint")

--lspconfig.efm.setup({
--	on_attach = on_attach,
--	capabilities = capabilities,
--	filetypes = { "solidity", "json", "sh", "markdown" },
--	init_options = {
--		documentFormatting = true,
--		codeAction = true,
--		codeLens = true,
--		diagnostics = true,
--		hover = true,
--		signatureHelp = true,
--		rename = true,
--		references = true,
--		completion = true,
--	},
--	settings = {
--		languages = {
--			solidity = { solhint },
--			go = { golangci },
--		},
--	},
--})
--
--GO

--lspconfig.gopls.setup({
--	on_attach = on_attach,
--	capabilities = capabilities,
--	settings = {
--		gopls = {
--			analyses = {
--				unusedparams = true,
--			},
--			staticcheck = true,
--			gofumpt = true,
--		},
--	},
--})
--require("lspconfig")["ts_ls"].setup({
--	on_attach = on_attach,
--	flags = lsp_flags,
--})

--SOLIDITY

-- local lsp_flags = {
-- 	-- This is the default in Nvim 0.7+
-- 	debounce_text_changes = 150,
-- }

--vim.lsp.config.solidity_ls = {
--	on_attach = on_attach,
--	capabilities = capabilities,
--	-- cmd = { "solidity-ls", "--stdio" },
--	cmd = { "vscode-solidity-server", "--stdio" },
--	filetypes = { "solidity", "sol" },
--	root_markers = { "foundry.toml", "hardhat.config.*", ".git" },
--	-- settings = {
--	-- 	solidity = {
--	-- 		compileUsingRemoteVersion = "latest",
--	-- 		defaultCompiler = "remote",
--	-- 		enabledAsYouTypeCompilationErrorCheck = true,
--	-- -- 	},
--	-- },
--}

-- lspconfig.solidity_ls_nomicfoundation.setup({
-- 	on_attach = on_attach,
-- 	capabilities = capabilities,
-- 	cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
-- 	filetpes = { "solidity" },
-- 	root_dir = lspconfig.util.root_pattern("foundry.toml", "hardhat.config.*", ".git"),
-- 	--root_dir = lspconfig.util.find_git_ancestor,
-- 	single_file_support = true,
-- })

--lspconfig.solidity.setup({
--	on_attach = on_attach,
--	capabilities = capabilities,
--})

--RUST

--lspconfig.rust_analyzer.setup({
--	on_attach = on_attach,
--	capabilities = capabilities,
--	settings = {
--		["rust-analyzer"] = {
--			imports = {
--				granularity = {
--					group = "module",
--				},
--				prefix = "self",
--			},
--			cargo = {
--				buildScripts = {
--					enable = true,
--				},
--			},
--			procMacro = {
--				enable = true,
--			},
--		},
--	},
--})

--local configs = require("lspconfig.configs")
--
--if not configs.noir then
--	configs.noir = {
--		default_config = {
--			cmd = { "nargo lsp" },
--			filetypes = { "nr,noir" },
--			-- 			init_options = {
--			-- 				-- Any initialization options
--			-- 				logging = { level = "trace" },
--			-- 			},
--			root_dir = function(fname)
--				return lspconfig.util.find_git_ancestor(fname)
--			end,
--			settings = {},
--		},
--	}
--	lspconfig.noir.setup({
--		on_attach = on_attach,
--		capabilities = capabilities,
--	})
--end
--
-- 	lspconfig.sway_lsp.setup({
-- 		on_attach = on_attach,
-- 		capabilities = capabilities,
-- 		flags = lsp_flags,
-- 	})
