require("user.options")                 --加载常规配置
require("user.autocmd")					--自动配置
require("user.keymaps")                 --加载自定义快捷键配置
require("user.colorscheme")             --加载配色方案文件
require("lazynvim-init")	            --加载插件管理器配置


-- 各个插件配置
--require("pluginsconfig.bufferline")           --标签栏
--require("pluginsconfig.lualine")              --状态栏
--require("pluginsconfig.nvim-tree")            --目录树
--require("plugin-config.treesitter")         --语法高亮
--require("plugin-config.rainbow")              --括号不同颜色显示
--require("plugin-config.autopairs")            --自动补全括号
--require("plugin-config.lsp")                  --
--require("plugin-config.cmp")                  --
--require("plugin-config.telescope")            --全局搜索文件
--require("plugin-config.vim-easy-align")       --快速对齐
--require("plugin-config.easymotion")           --快速定位
--require("plugin-config.colorizer")            --色块显示颜色名



--配色方案{{{
local colorscheme = "gruvbox"
vim.o.background = "dark"
--vim.g.tokyonight_style = "xxx"	--设置当前主题的各种不同色调

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
	return
end
--vim.cmd([[
--colorscheme gruvbox
--set background=dark
--]])



--配色方案结束}}}
