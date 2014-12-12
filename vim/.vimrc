"-------------------------
" Базовые настройки
"-------------------------
colorscheme zenburn
" set title
set cursorline

" Включаем несовместимость настроек с Vi (ибо Vi нам и не понадобится).
set nocompatible

" Показывать положение курсора всё время.
set ruler  

" Показывать незавершённые команды в статусбаре
set showcmd  

" Включаем нумерацию строк
set nu

" Фолдинг по отсупам
set foldmethod=marker

" Поиск по набору текста (очень полезная функция)
set incsearch

" Включаем подстветку найденных вариантов
set hlsearch

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
set scrolljump=7

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
set scrolloff=7

" Выключаем надоедливый "звонок"
set novisualbell
set t_vb=   

" Поддержка мыши
set mouse=a
set mousemodel=popup

" Кодировка текста по умолчанию
set termencoding=utf-8

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Скрыть панель в gui версии ибо она не нужна
set guioptions-=T

" Сделать строку команд высотой в одну строку
set ch=1

" Скрывать указатель мыши, когда печатаем
set mousehide

" Включить автоотступы
set autoindent

" Влючить подстветку синтаксиса
syntax on

" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Преобразование Таба в пробелы
set noexpandtab

" Размер табулации по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Формат строки состояния
"set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P 

" Statusline never hide
set laststatus=2

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages

" set paste

"-------------------------
" Горячие клавишы
"-------------------------

" Пробел в нормальном режиме перелистывает страницы
nmap <Space> <PageDown>

" CTRL-F для omni completion
imap <C-F> <C-X><C-O>

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

" C-y - удаление текущей строки
nmap <C-y> dd
imap <C-y> <esc>ddi

" C-d - дублирование текущей строки
imap <C-d> <esc>yypi

" Поиск и замена слова под курсором
"nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F3 - просмотр ошибок
nmap <F3> :copen<cr>
vmap <F3> <esc>:copen<cr>
imap <F3> <esc>:copen<cr>

" F5 - просмотр списка буферов
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - предыдущий буфер
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F8 - список закладок
"map <F8> :MarksBrowser<cr>
"vmap <F8> <esc>:MarksBrowser<cr>
"imap <F8> <esc>:MarksBrowser<cr>

" F9 - "make" команда
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i

" F10 - удалить буфер
map <F10> :bd<cr>
vmap <F10> <esc>:bd<cr>
imap <F10> <esc>:bd<cr>

" F11 - показать окно Taglist
map <F11> :TlistToggle<cr>
vmap <F11> <esc>:TlistToggle<cr>
imap <F11> <esc>:TlistToggle<cr>

" F12 - обозреватель файлов
map <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap >Ins> <Esc>i

" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>
" Определяем клавишу F8 для меню выбора кодировки
map <F8> :emenu Encoding.<Tab>

" Редко когда надо [ без пары =)
"imap [ []<LEFT>
" Аналогично и для {
"imap {<CR> {<CR>}<Esc>O

" С-q - выход из Vim 
map <C-Q> <Esc>:qa<cr>

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

" Выключаем filetype плагин. Настройки, специфичные для определынных файлов
" мы разнесём по разным местам
" Может повлиять на перезапись параметров, указанных в этом конфиге
" Посмотреть можно через :verbose set параметр
filetype plugin off
au BufRead,BufNewFile *.phps    set filetype=php
au BufRead,BufNewFile *.thtml    set filetype=php

" Настройки для SessionMgr
let g:SessionMgr_AutoManage = 0
let g:SessionMgr_DefaultName = "mysession"

" Настройки для Tlist (показвать только текущий файл в окне навигации по
" коду)

let g:Tlist_Show_One_File = 1
set completeopt-=preview
set completeopt+=longest
set mps-=[:]

" Проверка кода PHP
map <C-B> :w !php -l<CR>

" Переключение раскладки по <C-^>
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" templates
autocmd BufNewFile *.py 0r ~/.vim/templates/python.py
autocmd BufNewFile *.sh 0r ~/.vim/templates/bash.sh
autocmd BufNewFile,BufRead *.md setfiletype markdown

autocmd Filetype yaml setlocal expandtab

" Pathogen https://github.com/tpope/vim-pathogen: ctrlp.vim, vim-airline
execute pathogen#infect()

" ctrlp.vim plugin
let g:ctrlp_map = '<c-b>'
let g:ctrlp_cmd = 'CtrlPBuffer'

" airline theme https://github.com/paranoida/vim-airlineish
" let g:airline_theme = 'wombat'
let g:airline#extensions#tabline#enabled = 1

" try speed up
set synmaxcol=128
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems

