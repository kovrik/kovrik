" VIM config

set nocompatible
set modelines=0

" Automatically refresh VIM after vimrc changes
autocmd BufWritePost .vimrc source %

" Default window size
set lines=51 columns=189

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
set lbr                                    " переносить целые слова
set hidden                                 " не выгружать буфер когда переключаешься на другой
set mouse=a                                " turn on mouse in terminal
set mousehide                              " hide mouse in insert mode
set showcmd                                " показывать незавершенные команды в статусбаре (автодополнение ввода)
set matchpairs+=<:>                        " показывать совпадающие скобки для HTML-тегов
set showmatch                              " показывать первую парную скобку после ввода второй
set autoread                               " перечитывать изменённые файлы автоматически
set t_Co=256                               " use 256 colors in terminal
set confirm                                " использовать диалоги вместо сообщений об ошибках
set backspace=indent,eol,start             " backspace обрабатывает отступы, концы строк
set sessionoptions=curdir,buffers,tabpages " опции сессий - перейти в текущию директорию, использовать буферы и табы
set noswapfile                             " do not use swap file
set browsedir=current

" scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" keep indentation when pasting
set pastetoggle=<F6>

" search settings
set ignorecase " ignore case when searching
set smartcase  " - если искомое выражения содержит символы в верхнем регистре - ищет с учётом регистра, иначе - без учёта
set hls        " highlight search results
set incsearch  " incremental search

" folding settings
set foldenable        " enable folding
set foldmethod=indent
set foldcolumn=2      " show folding column
set foldlevel=999     " do not fold automatically

" always show statusline
set laststatus=2

let perl_folding=1 " perl classes and functions folding
let php_folding=1  " php classes and functions folding

" indent settings
set cindent     " C-like indents
set smartindent " smart indentation

au FileType crontab,fstab,make set noexpandtab tabstop=8 shiftwidth=8
au FileType scala set tabstop=2 shiftwidth=2 softtabstop=2

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set termencoding=utf8
set fencs=utf-8,cp1251,koi8-r,cp866 " encodings order
set ffs=unix,dos,mac " file format order

" syntax highlighting on
syntax on

" turn on filetypes
filetype on
filetype plugin on
filetype indent on

set guifont=Liberation\ Mono\ Bold\ 12

" NERDTree
noremap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" omnicompleteion
set complete-=i
set ofu=javacomplete#Complete
autocmd FileType java       set omnifunc=javacomplete#CompleteJava
autocmd FileType python     set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css        set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml        set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php        set omnifunc=phpcomplete#CompletePHP
autocmd FileType c          set omnifunc=ccomplete#CompleteCpp

" oh, yeah
nnoremap <up>     <nop>
nnoremap <down>   <nop>
nnoremap <left>   <nop>
nnoremap <right>  <nop>
inoremap <up>     <nop>
inoremap <down>   <nop>
inoremap <left>   <nop>
inoremap <right>  <nop>

" taglist
set tags=~/.tags
noremap <F4> :TlistToggle<CR>

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1
let perl_sync_dist     = 250

" map perltidy (only for selected blocks in visual mode!)
vnoremap <Leader>pt :!perltidy -l=0 -lp -cti=1 -pt=2 -bt=2 -sbt=2 -ce <CR>

" dont use Q for Ex mode
noremap Q :q

" indent highlight
set ts=4 sw=4 et
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size  = 1

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

" reselect after indent
vnoremap < <gv
vnoremap > >gv

" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk

nnoremap ; :

" strip all trailing whitespaces
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<CR>

" select text that was just pasted
nnoremap <leader>v V`]

" quickly open vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" quickly move between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" use Tab and jk to move through omnicomplete list
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
inoremap <expr> <Tab> ((pumvisible())?("\<C-n>"):("<Tab>"))

" tagbar binding
nnoremap <F8> :TagbarToggle<CR>

" swap lines (Alt + j\k)
set winaltkeys=no " disable menu access via ALT+<key>

" force saving files that require root permissions
cnoremap w!! %!sudo tee > /dev/null %

" toggle centered-view mode on/off
nnoremap \zz  :let &scrolloff=999-&scrolloff<CR>

" Gundo toggle
nnoremap <F5> :GundoToggle<CR>

" EasyMotion leader key
let g:EasyMotion_leader_key = '<Leader>'

highlight   NonText      guifg=#444444   guibg=#333333
highlight   SpecialKey   guifg=#333333
highlight   MatchParen   cterm=bold      ctermbg=NONE    ctermfg=cyan
highlight   MatchParen   guibg=NONE      guifg=cyan

" powerline
let g:Powerline_symbols = 'fancy'
" let g:Powerline_symbols = 'compatible'

let g:tex_flavor='latex'

" default color scheme
if has("gui_running")
    colorscheme lucius_dark
else
    if $TERM =~ "-256color"
        colorscheme lucius_dark
    else
        colorscheme lucius_dark
    endif
endif

" colorscheme hybrid
" colorscheme molokai
" colorscheme lucius
" colorscheme lucius_dark
" colorscheme tomorrow-night-bright
" colorscheme xoria256
" colorscheme skittles_berry
" colorscheme jellybeans2

" Smart Align - :Tabularize /pattern

" switch buffers
nnoremap <leader>ls :ls<CR>:sb<Space>

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim    = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs  = 1
let g:miniBufExplModSelTarget       = 1

" Tab completion
function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current line to one character right of the cursor
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

" inoremap <tab> <c-r>=Smart_TabComplete()<CR>
inoremap <C-tab> <c-r>=Smart_TabComplete()<CR>

noremap <F10> :QuickRun<CR>

" xpdf bindings
command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

" toggle folding
nnoremap <Space> za
vnoremap <Space> za

" Show syntax highlighting groups for word under cursor
noremap <C-S-I> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" make Y behave like other capitals
nnoremap Y y$

" vimux bindings begin =======================
" Prompt for a command to run
noremap <Leader>rp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
noremap <Leader>rl :VimuxRunLastCommand<CR>

" Inspect runner pane
noremap <Leader>ri :VimuxInspectRunner<CR>

" Close all other tmux panes in current window
noremap <Leader>rx :VimuxClosePanes

" Close vim tmux runner opened by VimuxRunCommand
noremap <Leader>rq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
noremap <Leader>rs :VimuxInterruptRunner<CR>
" vimux bindings end ========================

