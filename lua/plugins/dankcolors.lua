return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#191306',
				base01 = '#191306',
				base02 = '#a39d8a',
				base03 = '#a39d8a',
				base04 = '#fff7e0',
				base05 = '#fffbf2',
				base06 = '#fffbf2',
				base07 = '#fffbf2',
				base08 = '#ff503f',
				base09 = '#ff503f',
				base0A = '#ffc826',
				base0B = '#66ff4c',
				base0C = '#ffe28c',
				base0D = '#ffc826',
				base0E = '#ffd24c',
				base0F = '#ffd24c',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#a39d8a',
				fg = '#fffbf2',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#ffc826',
				fg = '#191306',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#a39d8a' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffe28c', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ffd24c',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#ffc826',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#ffc826',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#ffe28c',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#66ff4c',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#fff7e0' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#fff7e0' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#a39d8a',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
