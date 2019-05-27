" Показывать положение курсора всё время.
set ruler

" Показывать незавершённые команды в статусбаре
set showcmd

" Включаем нумерацию строк
set number

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться
" в режиме редактирования
set scrolljump=7

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься
" в режиме редактирования
set scrolloff=7

" Кодировка текста по умолчанию
set termencoding=utf-8

" Не выгружать буфер, когда переключаемся на другой. Это позволяет
" редактировать несколько файлов в один и тот же момент без необходимости
" сохранения каждый раз когда переключаешься между ними
set hidden

" Включить автоотступы
set autoindent

" Влючить подстветку синтаксиса
syntax on

" Размер табулации по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Включаем 'умные' отспупы ( например, автоотступ после {)
set smartindent

" F6 - предыдущий буфер
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F9 - "make" команда
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i

" F12 - обозреватель файлов
map <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов
set complete+=t

" Включаем filetype plugin
filetype plugin on
" filetype plugin indent on

" templates
autocmd BufNewFile *.py 0r ~/.vim/templates/python.py
autocmd BufNewFile *.sh 0r ~/.vim/templates/shell.sh
autocmd BufNewFile,BufRead *.md setfiletype markdown
autocmd BufNewFile,BufRead *.j2 setfiletype jinja

" -----------------
" Plugins settings
" -----------------

" Plugin manager installation
if empty(glob("~/.vim/autoload/pathogen.vim"))
	execute '!curl -LSso ~/.vim/autoload/pathogen.vim --create-dirs https://tpo.pe/pathogen.vim'
endif

" Pathogen https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" vim-autopep8
let g:autopep8_max_line_length=100

" maximum textwidth
set colorcolumn=100
"set textwidth=100

" set listchars for :set list
"set listchars=tab:--,eol:<,nbsp:·,trail:.
set listchars=tab:›\ ,extends:>,precedes:<,eol:¬,nbsp:·,trail:·
set list
highlight SpecialKey ctermfg=8

source ~/.vim/load/abbr.vim

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction

