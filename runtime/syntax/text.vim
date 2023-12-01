"/*******************************************************************************
" Filename: text.vim
" Description: Vim syntax file (.txt)
" Author: CSS
" Email: bwcdm@yeah.net
" Blog: www.chenshusong.com
" Last modified: 2022-05-05 09:48:34
" ******************************************************************************/

if exists("b:current_syntax")
    finish
endif

"颜色配置
hi def link S_Normal           S_Normal        " #839496  常规
hi def link S_Normal_B         S_Normal_B      " #839496  粗体B
hi def link S_Special          S_Special       " #dc322f  常规
hi def link S_Special_B        S_Special_B     " #dc322f  粗体B
hi def link S_Statement        S_Statement     " #719e07  常规
hi def link S_Statement_B      S_Statement_B   " #719e07  粗体B
hi def link S_Todo             S_Todo          " #d33682  常规
hi def link S_Todo_B           S_Todo_B        " #d33682  粗体B
hi def link S_Comment          S_Comment       " #324856  常规
hi def link S_Comment_B        S_Comment_B     " #324856  粗体B
hi def link S_Constant         S_Constant      " #2aa198  常规
hi def link S_Constant_B       S_Constant_B    " #2aa198  粗体B
hi def link S_Title            S_Title         " #cb4b16  常规
hi def link S_Title_B          S_Title_B       " #cb4b16  粗体B
hi def link S_Identifier       S_Identifier    " #268bd2  常规
hi def link S_Identifier_B     S_Identifier_B  " #268bd2  粗体B
hi def link S_Type             S_Type          " #b58900  常规
hi def link S_Type_B           S_Type_B        " #b58900  粗体B
hi def link S_Underlined       S_Underlined    " #6c71c4  下划线(已取消)
hi def link S_Underlined_B     S_Underlined_B  " #6c71c4  下划线粗体


"高亮配匹
"""""""""""""""""""""""""""""""""""关键词匹配
syntax keyword S_Type int long short byte

"""""""""""""""""""""""""""""""""""正则表达式匹配
"匹配|开头 (|本身不高亮，只高亮|后面字符)
"syntax region S_Underlined matchgroup=abc start="^|" end="$" contains=ALL

"匹配|开头 (当前行仅有一个|)
syntax match S_Underlined "^[\s\t]*|[^|]*$"


"匹配以##开头整行
syntax match S_Type "^\s*##.*$"


"匹配括号
"syntax match   S_Type "[(][^)]\+\(\n\)\=[^)]*[)]"        """两行可用
syntax match   S_Type "[(][^)]\+[^)]*[)]"
syntax match   S_Type "[（][^）]\+[^）]*[）]"
"syntax match   S_Type "[{][^}]\+[^}]*[}]"
syntax match   S_Type "[《][^》]\+[^》]*[》]"
"syntax match   S_Type "[<][^>]\+[^>]*[>]"
syntax match   S_Type "[[][^]]\+[^]]*[]]"


"匹配以#开头整行
syntax match S_Title "^\s*#.*$"

"匹配中文序号
syntax match S_Title_B  "^\s*[一二三四五六七八九][、]\+"
syntax match S_Title_B  "^\s*[一二三四五六七八九]*十[一二三四五六七八九]*[、]\+"

"匹配数字序号
syntax match S_Title_B  "^\s*\d\+[.]\+\d*[.]*"
syntax match S_Identifier_B  "^\s*\d\+[、]\+\d*[、]*"

"匹配以//开头
syntax match S_Comment "//.*$"

"匹配以\\开头
syntax match S_Constant "^[\s\t]*\\\\\(\s\|\t\)\{1,}.*"

"匹配行首*号和-号
syntax match S_Identifier_B "^\s*[*-]"

"匹配日期2020-02-02 时间:20:01:05
syntax match S_Underlined "\d\{4}-\d\{2}-\d\{2}"
syntax match S_Underlined "\d\{4}\/\d\{1,2}\/\d\{1,2}"
syntax match S_Underlined "\d\{2}:\d\{2}:\d\{2}"

"匹配国内电话
syntax match S_Underlined "0\d\{2,3}-\d\{7,8}"

"匹配国内身份证号16位或18位
syntax match S_Underlined "[1-9]\d\{5}\(19\|20\)\d\{2}\(0[1-9]\|1[0-2]\)\(0[1-9]\|[1-2][0-9]\|3[0-1]\)\(\d\{4}\|\d\{3}[xX]\)"

"匹配E-mail
syntax match S_Underlined "\(E-mail:\)*[a-zA-Z_0-9_-]\+@[a-zA-Z_0-9_-]*\.[a-zA-Z_0-9_-]*[.a-zA-Z_0-9_-]*"
"syntax match S_Underlined "\(E-mail:\)*[a-zA-Z_0-9_-]*@[a-zA-Z_0-9_-]*\([.][a-zA-Z_0-9_-]\)\+[.a-zA-Z_0-9_-]*"

"匹配网址(未配置好)
syntax match S_Underlined "\(http\|ftp\|https\):\/\/.*\/"
syntax match S_Underlined "\(http\|ftp\|https\):\/\/.*\s"
syntax match S_Underlined "www\.\w\+\.[0-9A-Za-z]\+"

"匹配IP地址
syntax match S_Underlined  "\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}"




"文件类型
let b:current_syntax = 'txt'
