return {
	"nvim-lualine/lualine.nvim",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		vim.opt.showcmdloc = "statusline"
		require("lualine").setup({
			options = {
				icons_enabled = false,
				theme = "iceberg_dark",
				component_separators = { left = "", right = "" }, --
				section_separators = { left = "", right = "" }, --
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
				},
			},

			sections = {
				lualine_a = { "mode" },
				lualine_b = { Luis },
				lualine_c = {},
				lualine_x = { "%S", progress },
				lualine_y = { "encoding", "filetype" },
				lualine_z = { 'os.date("%m/%d 周%w")', 'os.date("%H:%M")' },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
