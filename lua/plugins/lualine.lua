return {
	'nvim-lualine/lualine.nvim',	--插件下载地址
    config = function()
        -- Eviline config for lualine
        -- Author: shadmansaleh
        -- Credit: glepnir
        local lualine = require('lualine')

        -- Color table for highlights
        -- stylua: ignore
        local colors = {
            bg       = '#44475a',
            fg       = '#bbc2cf',
            yellow   = '#ECBE7B',
            cyan     = '#008080',
            darkblue = '#081633',
            green    = '#98be65',
            orange   = '#FF8800',
            violet   = '#a9a1e1',
            magenta  = '#bd93f9',
            blue     = '#51afef',
            red      = '#ec5f67',
        }

        local conditions = {
            buffer_not_empty = function()
                return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
            end,
            hide_in_width = function()
                return vim.fn.winwidth(0) > 80
            end,
            check_git_workspace = function()
                local filepath = vim.fn.expand('%:p:h')
                local gitdir = vim.fn.finddir('.git', filepath .. ';')
                return gitdir and #gitdir > 0 and #gitdir < #filepath
            end,
        }

        -- Config
        local config = {
            options = {
                -- Disable sections and component separators
                component_separators = '',
                section_separators = '',
                theme = {
                    -- We are going to use lualine_c an lualine_x as left and
                    -- right section. Both are highlighted by c theme .  So we
                    -- are just setting default looks o statusline
                    normal = { c = { fg = colors.fg, bg = colors.bg } },
                    inactive = { c = { fg = colors.fg, bg = colors.bg } },
                },
            },
            sections = {
                -- these are to remove the defaults
				lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
				lualine_z = {},
                -- These will be filled later
            },
            inactive_sections = {
                -- these are to remove the defaults
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
        }

        -- Inserts a component in lualine_c at left section
        local function ins_left(component)
            table.insert(config.sections.lualine_c, component)
        end

        -- Inserts a component in lualine_x at right section
        local function ins_right(component)
            table.insert(config.sections.lualine_x, component)
        end

        ins_left {		--NORMAL后面的箭头
            function()
                return '▊'
            end,
            color = { fg = colors.blue }, -- Sets highlighting of component
            padding = { left = 0, right = 1 }, -- We don't need space before this
        }

        ins_left {		--左边小图标
            -- mode component
            function()
                --return ''
                return ''
            end,
            color = function()
                -- auto change color according to neovims mode
                local mode_color = {
                    n = colors.red,
                    i = colors.green,
                    v = colors.blue,
                    [''] = colors.blue,
                    V = colors.blue,
                    c = colors.magenta,
                    no = colors.red,
                    s = colors.orange,
                    S = colors.orange,
                    [''] = colors.orange,
                    ic = colors.yellow,
                    R = colors.violet,
                    Rv = colors.violet,
                    cv = colors.red,
                    ce = colors.red,
                    r = colors.cyan,
                    rm = colors.cyan,
                    ['r?'] = colors.cyan,
                    ['!'] = colors.red,
                    t = colors.red,
                }
                return { fg = mode_color[vim.fn.mode()] }
            end,
            padding = { right = 1 },
        }

        ins_left {		--文件大小
            -- filesize component
            'filesize',
            cond = conditions.buffer_not_empty,
        }

        ins_left {		--文件名称
            'filename',
            cond = conditions.buffer_not_empty,
			icons_enabled = false,
            color = { fg = colors.magenta, gui = 'bold' },
        }

        ins_left {
            'diagnostics',		--来自您首选来源的诊断计数
            sources = { 'nvim_diagnostic' },
            symbols = { error = ' ', warn = ' ', info = ' ' },
            diagnostics_color = {
                color_error = { fg = colors.red },
                color_warn = { fg = colors.yellow },
                color_info = { fg = colors.cyan },
            },
        }

        -- Insert mid section. You can make any number of sections in neovim :)
        -- for lualine it's any number greater then 2
        ins_left {
            function()
                return '%='
            end,
        }

        --ins_left {		--LSP: No Active Lsp
        --    -- Lsp server name .
        --    function()
        --        local msg = 'No Active Lsp'
        --        local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
        --        local clients = vim.lsp.get_active_clients()
        --        if next(clients) == nil then
        --            return msg
        --        end
        --        for _, client in ipairs(clients) do
        --            local filetypes = client.config.filetypes
        --            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        --                return client.name
        --            end
        --        end
        --        return msg
        --    end,
        --    icon = ' LSP:',
        --    color = { fg = '#ffffff', gui = 'bold' },
        --}

		--
        -- Add components to right sections
        ins_right {		--文件编码
            'o:encoding', -- option component same as &encoding in viml
            fmt = string.upper, -- I'm not sure why it's upper case either ;)
            cond = conditions.hide_in_width,
            color = { fg = colors.green, gui = 'bold' },
        }

		ins_right {		--文件后缀
			'filetype',
            --cond = conditions.hide_in_width,
			padding = { left = 1, right = 1 },		--左边不起作用
		}

        ins_right {		--文件格式
            'fileformat',
            fmt = string.upper,
            --icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
			symbols = {
				unix = '', -- e712
				dos = '',  -- e70f
				mac = '',  -- e711
			},
            color = { fg = colors.green, gui = 'bold' },
        }
        ins_right {		--文件行中的位置: 列
			'location',
            color = { fg = colors.green, gui = 'bold' },
		}

        ins_right {		--文件进度百分比
			'progress',
			color = { fg = colors.fg, gui = 'bold' }
		}

        ins_right {		--文件总行数
			'os.date("%L")',
			color = { fg = colors.fg, gui = 'bold' }
		}

        ins_right {		--时间
			'os.date("%a 󱑂 %H:%M:%S")',
			color = { fg = colors.green, gui = 'bold' }
		}


        ins_right {		--git分支
            'branch',
            icon = '',
            color = { fg = colors.violet, gui = 'bold' },
        }

        ins_right {		--git差异状态
            'diff',
            -- Is it me or the symbol for modified us really weird
            symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
            diff_color = {
                added = { fg = colors.green },
                modified = { fg = colors.orange },
                removed = { fg = colors.red },
            },
            cond = conditions.hide_in_width,
        }

        ins_right {		--最右边色块
            function()
                return '▊'
            end,
            color = { fg = colors.blue },
            padding = { left = 1 },
        }

        -- Now don't forget to initialize lualine
        lualine.setup(config)
    end
}
