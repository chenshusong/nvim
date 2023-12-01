local opt = vim.opt     -- 将opt映射为vim.opt (即例opt.tabstop全名为vim.opt.tabstop)

-------------------------------------------------- 外观
opt.termguicolors = true
opt.signcolumn = "yes"


-------------------------------------------------- 编码设置
opt.encoding = "utf-8"
opt.fileencoding = 'utf-8'  --文件编码

-------------------------------------------------- 界面显示
--opt.mouse = ""              -- 禁用鼠标，（鼠标支持opt.mouse= "a"）
opt.number = true           -- 显示行号
--opt.number = true           -- 使用相对行号
--opt.relativenumber = true   --例用相对行号时光标所在行使用绝对行号
--opt.colorcolumn = "80"      -- 在n列高亮竖线
--opt.signcolumn = "yes"      -- 显示左侧图标指示列(不明白)

opt.scrolloff = 1           -- 光标移动时上下保留1行
opt.sidescrolloff = 4       -- 光标移动时左右保留4字符
opt.cursorline = true       -- 用浅色高亮当前行 (正常模式和插入模式都高亮)
opt.hlsearch = true         -- 取消高亮显示搜索关键字
--opt.wrapscan = false        -- 禁止循环查找方式
opt.ignorecase = true       -- 搜索忽略大小写，但在输入有大写字母时仍保持对大小写敏感
--opt.smartcase = true        -- 搜索关键字含大写时自动区分大小写(只能在set ignorecase开启时才起作用)
opt.wrap = false            -- 禁止自动换行
opt.linebreak = true        -- 整词换行(换行时单词不拆分)
opt.cursorline = true       -- 高亮光标所在行
opt.showcmd = true          -- 输入的命令显示出来，看的清楚些
opt.foldmethod = 'marker'   -- 折叠方式(manual手动，indent缩进，expr表达式，marker标记，syntax语法高亮，diff对没有更改的文本进行折叠)
--opt.list = true             -- 显示非打印字符(不可见字符)
opt.listchars = "tab:>-,space:_,trail:~,eol:↵,extends:>,precedes:<"     --更改非打印字符显示方式

-------------------------------------------------- 缩进
opt.autoindent = true       -- 启用自动缩进
opt.cindent	= true          -- 使用C／C＋＋语言的自动缩进方式
opt.expandtab = true        -- 将Tab键转换为空格
opt.tabstop = 4             -- Tab键的宽度
opt.shiftwidth = 4          -- 设定<<和>>移动的宽度为4个字符
opt.softtabstop = 4         -- 退格键一次删除4个字符,不足4个时只删除剩下字符

-------------------------------------------------- 实用设置
opt.autoread = true         -- 文件被外部程序修改时，自动加载
opt.backup = false          -- 禁止创建备份文件
opt.writebackup = false     -- 禁止创建备份文件
opt.swapfile = false        -- 禁止创建备份文件
opt.timeoutlen = 1000       -- 设置 timeoutlen 为等待键盘快捷键连击时间
opt.clipboard = "unnamed"	-- 共享系统剪贴板






