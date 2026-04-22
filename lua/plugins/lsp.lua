return {
	{ "nvimdev/lspsaga.nvim", opts = {} },
	"creativenull/efmls-configs-nvim",
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			require("lspconfig")
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
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(ev)
					local client = vim.lsp.get_client_by_id(ev.data.client_id)
					if client:supports_method("textDocument/completion") then
						vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
					end
				end,
			})
			vim.lsp.enable({ "efm", "solidity_ls", "rust-analyzer", "gopls", "lua_ls", "html" })
		end,
	},
}
