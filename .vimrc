" set modelines=0		" CVE-2007-2438

" 使用四个空格代替一个制表符
set softtabstop=4

" 缩进宽度为四个空格
set shiftwidth=4

" 制表符宽度为四个空格
set tabstop=4

" 显示行号
set number

" 打开语法高亮
syntax on

" Use Vim defaults instead of 100% vi compatibility
set nocompatible
set backspace=2

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup

" 不使用 vim 默认设置
let skip_defaults_vim=1

" 默认在注释符后添加空格
let g:NERDSpaceDelims = 1
" 使用紧凑语法美化多行注释
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" 使用vim-plug插件管理器
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
Plug 'preservim/nerdcommenter'
call plug#end()

let g:syntastic_cpp_compiler = 'clang++'
let g:ycm_confirm_extra_conf = 0

" 使 vim 打开时光标处在上次关闭的位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

nnoremap <Esc><Esc> :w<CR>
inoremap <Esc><Esc> <Esc>:w<CR>
nnoremap <C-d> :q!<CR>
inoremap <C-d> <Esc>:q!<CR>

