local pywal = require("pywal16")
local neopywal = require("neopywal")

pywal.setup()
neopywal.setup({
	dim_inactive = true,
	terminal_colors = true,
	show_split_lines = true,
	-- @audit works??
	styles = {
		--keywords = { "@dev", "@audit", "@note", "@natspec" },
		variables = { "italic" },
		types = { "italic" },
	},
	plugins = {
		rendermarkdown = false,
		markdown = false,
		nvim_cmp = false,
		harpoon = true,
		lualine = {
			enabled = false,
		},
		telescope = {
			enabled = true,
		},
		illuminate = {
			enabled = true,
			lsp = true,
			style = { "bold" },
		},
		mini = {
			enabled = false,
		},
	},
})

vim.cmd.colorscheme("neopywal-dark")
