return {
	"AvengeMedia/base46",
	lazy = false,
	priority = 1000,
	opts = {
		set_background = true,
		term_colors = true,
		transparency = false,

		-- Contrary to NvChad, all integrations are enabled by default.
		integrations = {
			blankline = true,
			blink = true,
			cmp = true,
			defaults = true,
			devicons = true,
			git = true,
			lsp = true,
			mason = true,
			nvcheatsheet = true,
			nvimtree = true,
			statusline = true,
			syntax = true,
			treesitter = true,
			tbline = true,
			telescope = true,
			whichkey = true,
			alpha = true,
			avante = true,
			["blink-pair"] = true,
			bufferline = true,
			codeactionmenu = true,
			dap = true,
			diffview = true,
			edgy = true,
			flash = true,
			["git-conflict"] = true,
			grug_far = true,
			hop = true,
			leap = true,
			lspsaga = true,
			markview = true,
			["mini-tabline"] = true,
			navic = true,
			neogit = true,
			notify = true,
			nvshades = true,
			orgmode = true,
			rainbowdelimiters = true,
			["render-markdown"] = true,
			semantic_tokens = true,
			["tiny-inline-diagnostic"] = true,
			todo = true,
			trouble = true,
			["vim-illuminate"] = true,
		},

		nvchad = {
			---@type "default"|"atom"|"atom_colored"|"flat_light"|"flat_dark"
			cmp_style = "default",
			---@type "bordered"|"borderless"
			telescope_style = "bordered",
			---Set to nil when nvchad's statusline is disabled
			---@type "default"|"minimal"|"vscode"|"vscode_colored"|nil
			statusline_theme = "default",
			-- Some highlights change on the cheatsheet if it is set to "grid"
			cheatsheet_theme = nil,
		},
	},
	config = function(_, opts)
		require("base46").setup(opts)
		vim.cmd.colorscheme("dms")
		local w = vim.uv.new_fs_event()
		w:start(vim.fn.expand("~/.config/DankMaterialShell"), {}, function(err, filename, events)
			if filename == "settings.json" then
				vim.schedule(function()
					vim.cmd("source ~/.config/nvim/colors/dms.lua")
				end)
			end
		end)
	end,
}
