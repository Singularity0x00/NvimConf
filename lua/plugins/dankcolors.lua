return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#131313',
				base01 = '#131313',
				base02 = '#889698',
				base03 = '#889698',
				base04 = '#e2f3f5',
				base05 = '#f6fdff',
				base06 = '#f6fdff',
				base07 = '#f6fdff',
				base08 = '#ff80ac',
				base09 = '#ff80ac',
				base0A = '#6feeff',
				base0B = '#88ff93',
				base0C = '#b2f6ff',
				base0D = '#6feeff',
				base0E = '#88f1ff',
				base0F = '#88f1ff',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#889698',
				fg = '#f6fdff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#6feeff',
				fg = '#131313',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#889698' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#b2f6ff', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#88f1ff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#6feeff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#6feeff',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#b2f6ff',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#88ff93',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#e2f3f5' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#e2f3f5' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#889698',
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
