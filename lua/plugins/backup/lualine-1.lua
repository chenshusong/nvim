return {
	'nvim-lualine/lualine.nvim',	--插件下载地址
	config = function()
		require('lualine').setup({	--插件配置

			options = {
				icons_enabled = true,
				theme = 'auto',		--配色，auto自动，可更改为固定主题
				component_separators = { left = '', right = ''},
				section_separators = { left = '', right = ''},
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				}
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_c = {'filename' },
				lualine_x = {'encoding', 'fileformat', 'filetype', 'os.date("%m月%d日 星期%w %H:%M:%S")'},
				lualine_y = {'progress'},
				--lualine_z = {'location'}
				lualine_z = { '%l/%L :%c' },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {'filename'},
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end
}
