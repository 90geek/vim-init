"======================================================================
"
" init-tabsize.vim - 大部分人对 tabsize 都有自己的设置，改这里即可
"
" Created by skywind on 2018/05/30
" Last Modified: 2018/05/30 22:05:44
"
"======================================================================
" vim: set ts=4 sw=4 tw=78 noet :


"----------------------------------------------------------------------
" 默认缩进模式（可以后期覆盖）
"----------------------------------------------------------------------

"1:tab为两个空格
"0:默认tab为\t，4个宽度
let g:tab_config=1
if g:tab_config == 1
	set sw=2
	set ts=2
	set et
	set softtabstop=2
else
	" 设置缩进宽度
	set sw=4

	" 设置 TAB 宽度
	set ts=4

	" 禁止展开 tab (不用空格noexpandtab/用空格expandtab)
	set noet

	" 如果后面设置了 expandtab 那么展开 tab 为对应个数的空格字符,
	" 也会影响Backspace删除个数
	set softtabstop=4
endif

augroup PythonTab
	au!
	" 如果你需要 python 里用 tab，那么反注释下面这行字，否则vim会在打开py文件
	" 时自动设置成空格缩进。
	"au FileType python setlocal shiftwidth=4 tabstop=4 noexpandtab
augroup END


