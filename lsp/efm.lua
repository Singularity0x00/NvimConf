local solhint = require("efmls-configs.linters.solhint")
local golangci = require("efmls-configs.linters.golangci_lint")

return {
	on_attach = ON_ATTACH,
	--	capabilities = CAPABILITIES,
	filetypes = { "solidity", "json", "sh", "markdown" },
	init_options = {
		documentFormatting = true,
		codeAction = true,
		codeLens = true,
		diagnostics = true,
		hover = true,
		signatureHelp = true,
		rename = true,
		references = true,
		completion = true,
	},
	settings = {
		languages = {
			solidity = { solhint },
			go = { golangci },
		},
	},
}
