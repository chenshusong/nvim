vim.cmd([[

"设置双字节字符字体
set guifontwide=Microsoft\ YaHei\ Mono:h12:cANSI

"设置默认字体(会弹出警告)
set guifont=XXX-Monaco-Nerd:h12:cANSI

"设置默认字体(不弹出警告)
"autocmd vimenter * GuiFont! XXX-Monaco-Nerd:h12
"autocmd vimenter * GuiFont! BitstreamVeraSansMono Nerd Font::h13
"autocmd vimenter * GuiFont! JetBrainsMono Nerd Font Mono::h12
"autocmd vimenter * GuiFont! Inconsolata Nerd Font Mono::h13

""""""""" 自定义配色{{{
hi S_Normal        guifg=#839496 guibg=NONE gui=none		"常规
hi S_Normal_B      guifg=#839496 guibg=NONE gui=bold		"常规
hi S_Normal_N      guifg=#839496 guibg=NONE gui=undercurl	"下划线
hi S_Comment       guifg=#324856 guibg=NONE gui=none		"注释
hi S_Comment_B     guifg=#324856 guibg=NONE gui=bold		"注释
hi S_Special       guifg=#dc322f guibg=NONE gui=none		"特殊
hi S_Special_B     guifg=#dc322f guibg=NONE gui=bold		"特殊
hi S_Constant      guifg=#2aa198 guibg=NONE gui=none		"字串
hi S_Constant_B    guifg=#2aa198 guibg=NONE gui=bold		"字串
hi S_Title         guifg=#cb4b16 guibg=NONE gui=none		"标题
hi S_Title_B       guifg=#cb4b16 guibg=NONE gui=bold		"标题
hi S_Identifier    guifg=#268bd2 guibg=NONE gui=none		"标识
hi S_Identifier_B  guifg=#268bd2 guibg=NONE gui=bold		"标识
hi S_Todo          guifg=#d33682 guibg=NONE gui=none		"Todo
hi S_Todo_B        guifg=#d33682 guibg=NONE gui=bold		"Todo
hi S_Statement     guifg=#719e07 guibg=NONE gui=none		"语句
hi S_Statement_B   guifg=#719e07 guibg=NONE gui=bold		"语句
hi S_Type          guifg=#b58900 guibg=NONE gui=none		"数据类型
hi S_Type_B        guifg=#b58900 guibg=NONE gui=bold		"数据类型
hi S_Underlined    guifg=#6c71c4 guibg=NONE gui=none		"下划线(已取消)
hi S_Underlined_B  guifg=#6c71c4 guibg=NONE gui=bold		"下划线(已取消)

"}}}


hi CursorLine			guifg=NONE guibg=#6c71c4 gui=none "不起作用



]])


