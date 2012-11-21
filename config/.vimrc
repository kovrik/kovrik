" VIM config

set nocompatible
set modelines=0

" Automatically refresh VIM after vimrc changes
autocmd BufWritePost .vimrc source %

" Default window size
set lines=51 columns=189

" syntax highlighting on
syntax on

" tun autoindentation on
set autoindent

" show line numbers
set number

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" For regular expressions turn magic on
set magic

" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set wildmenu
set ttyfast
set ruler
" set undofile
if version > 720
    set undofile
    set undodir=~/vimundo/
endif

set cursorline
set listchars=nbsp:¬,extends:»,precedes:«,trail:~
set list

" hide toolbar
set guioptions-=T

" hide scrollbars
set guioptions+=LlRrb
set guioptions-=LlRrb

set wrap " turn on wrapping
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85

set vb
set lbr " переносить целые слова
set hidden " не выгружать буфер когда переключаешься на другой
set mouse=a " включает поддержку мыши при работе в терминале (без GUI)
set mousehide " скрывать мышь в режиме ввода текста
set showcmd " показывать незавершенные команды в статусбаре (автодополнение ввода)
set matchpairs+=<:> " показывать совпадающие скобки для HTML-тегов
set showmatch " показывать первую парную скобку после ввода второй
set autoread " перечитывать изменённые файлы автоматически
set t_Co=256 " использовать больше цветов в терминале
set confirm " использовать диалоги вместо сообщений об ошибках
set backspace=indent,eol,start " backspace обрабатывает отступы, концы строк
set sessionoptions=curdir,buffers,tabpages " опции сессий - перейти в текущию директорию, использовать буферы и табы
set noswapfile " не использовать своп-файл (в него скидываются открытые буферы)
set browsedir=current

" Scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

"При вставке фрагмента сохраняет отступы
set pastetoggle=<F6>

"НАСТРОЙКИ ПОИСКА
set ignorecase " ics - поиск без учёта регистра символов
    set smartcase " - если искомое выражения содержит символы в верхнем регистре - ищет с учётом регистра, иначе - без учёта
set hls " подсветка результатов поиска
set incsearch " поиск фрагмента по мере его набора

"НАСТРОЙКИ СВОРАЧИВАНИЯ БЛОКОВ КОДА (фолдинг)
set foldenable " включить фолдинг
set foldmethod=indent " определять блоки на основе синтаксиса файла
set foldcolumn=2 " показать полосу для управления сворачиванием
set foldlevel=999 " Первый уровень вложенности открыт, остальные закрыты

" always show statusline
set laststatus=2

let perl_folding=1 " правильное сворачивание классов и функций Perl
let php_folding=1 " правильное сворачивание классов и функций PHP
"set foldopen=all " автоматическое открытие сверток при заходе в них

"НАСТРОЙКИ ОТСТУПА
set cindent " ci - отступы в стиле С
set smartindent " Умные отступы (например, автоотступ после {)
"Для указанных типов файлов отключает замену табов пробелами и меняет ширину отступа
au FileType crontab,fstab,make set noexpandtab tabstop=8 shiftwidth=8

au FileType scala set tabstop=2 shiftwidth=2 softtabstop=2

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set termencoding=utf8
set fencs=utf-8,cp1251,koi8-r,cp866 " варианты кодировки файла по умолчанию (все файлы по умолчанию сохраняются в этой кодировке)
" set termencoding=utf8
set ffs=unix,dos,mac " формат файла по умолчанию (влияет на окончания строк) - будет перебираться в указанном порядке

"Применять типы файлов
filetype on
filetype plugin on
filetype indent on

set guifont=Liberation\ Mono\ Bold\ 12

"""""""""""""""""""""""""""
" ------- Plugins ------- "
"""""""""""""""""""""""""""
"NERDTree
noremap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"omnicompleteion
set complete-=i
set ofu=javacomplete#Complete
autocmd FileType java set omnifunc=javacomplete#CompleteJava
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#CompleteCpp

"taglist
set tags=~/.tags
noremap <F4> :TlistToggle<CR>

" show line numbers
autocmd FileType perl set number

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

" make tab in normal mode ident code
" nnoremap <tab> I<tab><esc>
" nnoremap <s-tab> ^i<bs><esc>

" make tab in v mode ident code
" vnoremap <tab> >gv
" vnoremap <s-tab> <gv

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1
let perl_sync_dist     = 250

" map perltidy (only for selected blocks in visual mode!)
vnoremap <Leader>pt :!perltidy -l=0 -lp -cti=1 -pt=2 -bt=2 -sbt=2 -ce <CR>
" nmap <Leader>pt :%! perltidy -lp -cti=1 -pt=0 -bt=0 -sbt=0 -ce <CR>

" dont use Q for Ex mode
noremap Q :q

" indent highlight
set ts=4 sw=4 et
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1

" map Ctrl+Space to autocomplete
if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
    inoremap <C-Space> <C-x><C-o>
else " no gui
  if has("unix")
    inoremap <Nul> <C-x><C-o>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

" === swap windows BEGIN
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf
endfunction

nnoremap <silent> <leader>mw :call MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call DoWindowSwap()<CR>
" === swap windows END

noremap <Leader><CR> :nohlsearch<CR>

" turns off Vim’s crazy default regex characters and makes searches use normal regexes
nnoremap / /\v
vnoremap / /\v

" oh, yeah
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk

nnoremap ; :

" save on focus lost
" au FocusLost * :wa

" strip all trailing whitespaces
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<CR>

" select text that was just pasted
nnoremap <leader>v V`]

" quickly open vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" quickly open new split window
" nnoremap <leader>w <C-w>v<C-w>l

" quickly move between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" use Tab and jk to move through omnicomplete list
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" tagbar binding
nnoremap <F8> :TagbarToggle<CR>

" swap lines (Alt + j\k)
set winaltkeys=no " disable menu access via ALT+<key>
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv

" easy switch between windows
" nnoremap <tab><tab> <C-w>w

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" force saving files that require root permissions
cnoremap w!! %!sudo tee > /dev/null %

" switch between tabs
noremap <A-1> 1gt
noremap <A-2> 2gt
noremap <A-3> 3gt
noremap <A-4> 4gt
noremap <A-5> 5gt
noremap <A-6> 6gt
noremap <A-7> 7gt
noremap <A-8> 8gt
noremap <A-9> 9gt
noremap <A-0> 10gt
inoremap <A-1> 1gt
inoremap <A-2> 2gt
inoremap <A-3> 3gt
inoremap <A-4> 4gt
inoremap <A-5> 5gt
inoremap <A-6> 6gt
inoremap <A-7> 7gt
inoremap <A-8> 8gt
inoremap <A-9> 9gt
inoremap <A-0> 10gt

" toggle centered-view mode on/off
nnoremap \zz  :let &scrolloff=999-&scrolloff<CR>

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" Gundo toggle
nnoremap <F5> :GundoToggle<CR>

" EasyMotion leader key
let g:EasyMotion_leader_key = '<Leader>'

highlight NonText guifg=#444444 guibg=#333333
highlight SpecialKey guifg=#333333
highlight MatchParen cterm=bold ctermbg=NONE ctermfg=cyan
highlight MatchParen guibg=NONE guifg=cyan

" powerline
" let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'compatible'

let g:tex_flavor='latex'

" default color scheme
" colorscheme hybrid
" colorscheme molokai
colorscheme lucius
" colorscheme tomorrow-night-bright
" colorscheme xoria256
" colorscheme skittles_berry

" Smart Align - :Tabularize /pattern

" switch buffers
nnoremap <leader>ls :ls<CR>:sb<Space>

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" Tab completion 
function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor

  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif

  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction

inoremap <tab> <c-r>=Smart_TabComplete()<CR>
inoremap <C-tab> <c-r>=Smart_TabComplete()<CR>

noremap <F10> :QuickRun<CR>

" xpdf bindings
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

" force saving files that require root permissions
cmap w!! %!sudo tee > /dev/null %

" toggle folding
nnoremap <Space> za
vnoremap <Space> za

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

