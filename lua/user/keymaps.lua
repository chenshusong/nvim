local map = vim.keymap.set
--将空格键映射为leader
--vim.g.mapleader = " "

-- 取消 s 默认功能
--map("n", "s", "")


-- 在bufferline中切换文件 (A-l/h)
map("n", "<A-l>", ":bn<CR>")
map("n", "<A-h>", ":bp<CR>")


-- 切换窗口<C-h>
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")


-- 单行或多行上下移动位置 (1/2)
map("v", "1", ":m '<-2<CR>gv=gv")        --上移一行
map("v", "2", ":m '>+1<CR>gv=gv")        --下移一行


--普通模式下在上一行添加空行 (Shift+Alt+j)
map("n", "<S-A-j>", "O<Esc>j")
--普通模式下上移一行(合并上一行) (Shift+Alt+k)
map("n", "<S-A-k>", "kJ")


-- 普通模式下插入空格 (空格键)
map("n", "<Space>", "i<Space><Esc><Right>")


--插入日期时间 (xdt)
map("i", "xdt ", "<C-r>=strftime('%Y-%m-%d %H:%M:%S %A') <CR>")


--显示/隐藏搜索高亮 (<Tab> hl/nohl)
map("n", "<Tab>hl<CR>", ":set hlsearch<CR>")
map("n", "<Tab>nohl<CR>", ":set nohlsearch<CR>")


-- Shift+Tab 跳到正确缩进位置插入
map("i", "S-Tab", "<Esc>S")


--调整多行缩进后再次自动选中
map("v", "<", "<gv")
map("v", ">", ">gv")


-- Alt+k替换Ctrl+k插入特殊字符
map("i", "<A-k>", "<C-k>")
map("c", "<A-k>", "<C-k>")


-- 插入模式Ctrl+HJKL方向键
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
-- 命令行模式Ctrl+HL方向键
map("c", "<C-h>", "<Left>")
map("c", "<C-l>", "<Right>")
-- 插入模式Alt+HL行首行尾
map("i", "<A-h>", "<Home>")
map("i", "<A-l>", "<End>")
-- 命令行模式Alt+HL行首行尾
map("c", "<A-h>", "<Home>")
map("c", "<A-l>", "<End>")


-- 普通模式下 (Alt+k Alt+j) 替换gk,gj跳转屏幕行
map("n", "<A-k>", "gk")
map("n", "<A-j>", "gj")


-- 取消文档末尾换行符(即不会自动多一行)	(\w)
map("n", "<leader>w", ":set noeol binary<CR>")


-- 全局搜索相同的行(\gg)(\gj)
map("n", "<leader>gg", ":g/\\(^.*$\\)\\(\\n.*\\)*\\n\\1$/m0")   -- (全文相同) (\gg)
map("n", "<leader>gj", ":g/\\(^.*$\\) \\n\\1$/m0") -- (前后相同) (\gj)


-- 插入文件名并关闭文件 (\t)
map("n", "<leader>t", "gg <S-o><C-r>%<Esc> :w<CR> :bd<CR>")


-- 给不同段落分别插入序号 (\number)
map("n", "<leader>number", ":s/^//g | let i=1 | g//if(getline('.') != '') | s/^/\\=i.'. '/ | let i+=1 | elseif(getline('.') == '') | let i=1 | endif")


-- 插入所有行号(行号后面添加空格) (\line)
map("n", "<leader>line", ":%s/^/ /g | %s/^/\\=line('.') /")


--Ctrl+A/Ctrl+X 增减数值后再次自动选中
map ("v","<C-a>", "<C-a>gv")
map ("v","<C-x>", "<C-x>gv")


--转换全角半角 , ; : ? ! (<Tab>, \，<CR>)
map ("n", "<Tab>,", ":%s/，/,/ge | %s/；/;/ge | %s/：/:/ge | %s/？/?/ge | %s/！/!/ge")
map ("n", "<Tab>，", ":%s/,/，/ge | %s/;/；/ge | %s/:/：/ge | %s/?/？/ge | %s/!/！/ge")


-- 在visual 模式里粘贴不要复制
map("v", "p", '"_dP')


--复制*寄存器到z (\z)
map("n", "<leader>z", "let @z=@*<CR>")


-- 粘贴寄存器* (\p)
map("n", "<leader>p", "s<C-r>*<Esc>")
map("v", "<leader>p", "s<C-r>*<Esc>")


--正常模式下j/k映射为gj/gk，C-j/C-k为j/k
--map("n", "j", "v:count ? 'j' : 'gj'", { noremap = true, expr = true })
--map("n", "k", "v:count ? 'k' : 'gk'", { noremap = true, expr = true })


--窗口比例控制 (C-Left/Right/Down/Up, +)
map("n", "<C-Left>", ":vertical resize -2<CR>")     --缩小窗口宽度 (C-Left)
map("n", "<C-Right>", ":vertical resize +2<CR>")    --放大窗口宽度 (C-Right)
map("n", "<C-Down>", ":resize +2<CR>")              --放大窗口高度 (C-Down)
map("n", "<C-Up>", ":resize -2<CR>")                --缩小窗口高度 (C-Up)
map("n", "+", "<C-w>=")                             --所有窗口平分大小 (+)


--设置Tab键为空格或Tab (<Tab>s <Tab>t)，Tab 空格互转(<Tab>ss <Tab>tt)
map("n", "<Tab>s", ":set expandtab<CR>")                --设置Tab键为空格
map("n", "<Tab>t", ":set noexpandtab<CR>")              --设置Tab键为Tab
map("n", "<Tab>ss", ":set expandtab<CR>:ret! 4<CR>")    --将Tab符转换为空格
map("n", "<Tab>tt", ":set noexpandtab<CR>:ret! 4<CR>")  --将空格转换为Tab符





----------------------------------------------------插件map配置

--开启/关闭NvimTree (目录树) (F2)
map("n", "<F2>", ":NvimTreeToggle<CR>")


--开启/关闭Colorizer (颜色色块高亮) (tc)
map("n", "<leader>tc", ":ColorizerToggle<CR>")


--easymotion (快速定位) (,)
map("n", ",", "<Plug>(easymotion-prefix)")


--EasyAlign (快速对齐) (ga)
map("x", "ga", "<Plug>(EasyAlign)")

--vim-trailing-whitespace (显示/去除行尾空格) (\\=space)
map("n", "<leader><leader><space>", ":FixWhitespace<CR>")
