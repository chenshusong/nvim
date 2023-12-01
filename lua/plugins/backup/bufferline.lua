return {
    "akinsho/bufferline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local status_ok, bufferline = pcall(require, "bufferline")
		if not status_ok then
			return
		end
		bufferline.setup({
			options = {
				numbers = "ordinal",	--|"none"|"ordinal"|"buffer_id"|"both"|function({ ordinal, id, lower, raise }): string,
				close_command = "bdelete! %d",		--点击关闭按钮关闭
				right_mouse_command = "bdelete! %d",	--右键点击关闭
				left_mouse_command = "buffer %d",
				middle_mouse_command = nil,
				indicator = {
					icon = "▎",		--分割线
					style = "underline",	--|"icon"|"none"|"underline"
				},
				indicator_icon = nil,
				buffer_close_icon = "󰅚", --|"󰅖"
				modified_icon = "",	--|"●"
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",
				max_name_length = 30,
				max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
				truncate_names = true, -- whether or not tab names should be truncated
				tab_size = 20,		--tab大小
				diagnostics = "coc", --|"nvim_lsp" |"coc",
				diagnostics_update_in_insert = true,
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer", --|function ,
						text_align = "left", --|"center" |"right"
						separator = true,		--设置打开nvim-tree时，tab 栏会自动向右偏移
                        highlight = "Directory",
						--padding = 3,			tab栏缩进
					},
				},
				color_icons = true, --|false, -- whether or not to add the filetype icon highlights
				show_buffer_icons = true, --|false, -- disable filetype icons for buffers
				show_buffer_close_icons = true, --  |false,
				show_close_icon = false, --  |false,
				show_tab_indicators = true, --  |false,
				show_duplicate_prefix = true, --  |false, -- whether to show duplicate buffer prefix
				persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
				separator_style = "thick", -- 标签页两边的样式: "slope" |"thick" |"thin" |{ 'any', 'any' },
				enforce_regular_tabs = true, --  |true,
				always_show_bufferline = true, --  |false,
			},
        highlights = {}
		})
	end,
}
