" VIM config
set nocompatible
" =============== VUNDLE BEGIN ==============
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
"""""""""""""""""""""""""""
Bundle 'c9s/perlomni.vim'
Bundle 'godlygeek/tabular'
Bundle 'Raimondi/delimitMate'
Bundle 'vim-scripts/Colour-Sampler-Pack'
Bundle 'vim-scripts/perl-support.vim'
Bundle 'vim-scripts/pmd.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'thinca/vim-quickrun'
Bundle 'aaronbieber/quicktask'
Bundle 'xolox/vim-session'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'vim-scripts/tComment'
Bundle 'vim-scripts/VisIncr'
Bundle 'wikitopian/hardmode'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'vim-scripts/closetag.vim'
Bundle 'paradigm/TextObjectify'
Bundle 'coderifous/textobj-word-column.vim'
" Bundle 'ervandew/eclim'
" Bundle 'nathanaelkane/vim-indent-guides'
" Bundle 'garbas/vim-snipmate'
" Bundle 'Townk/vim-autoclose'
" Bundle 'Gundo'
Bundle 'CSApprox'
Bundle 'ZenCoding.vim'
Bundle 'MatchTag'
Bundle 'matchit.zip'
Bundle 'javacomplete'
Bundle 'EasyGrep'
" Bundle 'VimOutliner'
" =============== VUNDLE END ==============
" set background=dark

set timeout timeoutlen=1000 ttimeoutlen=100

set modelines=0
set lines=51 columns=189 " Default window size
set autoindent " tun autoindentation on
set number " show line numbers
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
set magic " For regular expressions turn magic on

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

set guioptions-=T " hide toolbar

" hide scrollbars
set guioptions+=LlRrb
set guioptions-=LlRrb

set wrap " turn on wrapping
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85

set vb
set lbr                                    " wrap whole words
set hidden                                 " не выгружать буфер когда переключаешься на другой
set mouse=a                                " turn on mouse in terminal
set mousehide                              " hide mouse in insert mode
set showcmd                                " показывать незавершенные команды в статусбаре (автодополнение ввода)
set matchpairs+=<:>                        " show matching brackets for HTML tags
set showmatch                              " show first matching parenthesis after inserting the second
set autoread                               " reread changed files automatically
set t_Co=256                               " use 256 colors in terminal
set t_ut=
set confirm                                " use dialogs instead of error messages
set backspace=indent,eol,start             " backspace обрабатывает отступы, концы строк
set sessionoptions=curdir,buffers,tabpages " опции сессий - перейти в текущию директорию, использовать буферы и табы
set noswapfile                             " do not use swap file
set browsedir=current

" scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

set pastetoggle=<F6> " keep indentation when pasting

" search settings
set ignorecase " ignore case when searching
set smartcase  " - если искомое выражения содержит символы в верхнем регистре - ищет с учётом регистра, иначе - без учёта
set hls        " highlight search results
set incsearch  " incremental search

" folding settings
set foldenable          " enable folding
set foldmethod=indent
set foldcolumn=2      " show folding column
set foldlevel=999    " do not fold automatically

set laststatus=2      " always show statusline

" indent settings
set cindent     " C-like indents
set smartindent " smart indentation

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set termencoding=utf8
set fencs=utf-8,cp1251,koi8-r,cp866 " encodings order
set ffs=unix,dos,mac " file format order

syntax on " syntax highlighting on

set winaltkeys=no " disable menu access via ALT+<key>

set guifont=Liberation\ Mono\ Bold\ 12

let NERDTreeShowHidden=1

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'
" Turn neocomplcache on
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder
let g:neocomplcache_lock_buffer_name_pattern = '\*ctrp\*'

" syntastic tweaks
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1

" omnicompleteion
set complete-=i
set ofu=javacomplete#Complete

" ========= AUTOCOMMANDS BEGIN  ======================
autocmd BufWritePost .vimrc source % " Automatically refresh VIM after vimrc changes

autocmd FileType java       set omnifunc=javacomplete#CompleteJava
autocmd FileType python     set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css        set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml        set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php        set omnifunc=phpcomplete#CompletePHP
autocmd FileType c          set omnifunc=ccomplete#CompleteCpp

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m

autocmd FileType crontab,fstab,make set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType scala set tabstop=2 shiftwidth=2 softtabstop=2

" clear settings if editing crontab
autocmd BufNewFile,BufRead crontab.* setfiletype crontab
autocmd FileType crontab set nobackup
autocmd FileType crontab set noswapfile
autocmd FileType crontab set noundofile
" ========= AUTOCOMMANDS END  ======================

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1
let perl_sync_dist     = 250
let perl_folding       = 1  " perl classes and functions folding
let php_folding        = 1  " php classes and functions folding

" indent highlight
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

" === swap windows END

" ====== KEY BINDINGS BEGIN ====================
nnoremap <silent> <leader>mw :call MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call DoWindowSwap()<CR>

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>   neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h>  neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS>   neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" neocomplcache settings end -----------------

" neosnippet settings ------------------------
" Plugin key-mappings.
inoremap <C-k> <Plug>(neosnippet_expand_or_jump)
snoremap <C-k> <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
inoremap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
snoremap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" NERDTree
noremap <F2> :NERDTreeToggle<CR>

" map perltidy (only for selected blocks in visual mode!)
vnoremap <Leader>pt :!perltidy -l=0 -lp -cti=1 -pt=2 -bt=2 -sbt=2 -ce <CR>

noremap Q :q " dont use Q for Ex mode

" disable arrows
nnoremap <up>     <nop>
nnoremap <down>   <nop>
nnoremap <left>   <nop>
nnoremap <right>  <nop>
inoremap <up>     <nop>
inoremap <down>   <nop>
inoremap <left>   <nop>
inoremap <right>  <nop>
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

" nnoremap ; :

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

" delete into the black hole register
nnoremap <leader>d "_d
" force saving files that require root permissions
cnoremap w!! %!sudo tee > /dev/null %

" toggle centered-view mode on/off
nnoremap \zz  :let &scrolloff=999-&scrolloff<CR>

" Gundo toggle
" nnoremap <F5> :GundoToggle<CR>

" switch buffers
nnoremap <leader>ls :ls<CR>:sb<Space>

noremap <F10> :QuickRun<CR>

" toggle folding
nnoremap <Space> za
vnoremap <Space> za

" make Y behave like other capitals
nnoremap Y y$

" Underline the current line with dashes in normal mode
nnoremap <F6> yyp<c-v>$r-

" Underline the current line with dashes in insert mode
inoremap <F6> <Esc>yyp<c-v>$r-A

" use Tab and jk to move through omnicomplete list
" inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
" inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

noremap <C-S-I> :call <SID>SynStack()<CR>
" ====== KEY BINDINGS END  ====================

let g:EasyMotion_leader_key = '<Leader>'

" powerline
if has("gui_running")
  let g:Powerline_symbols = 'fancy'
else
  let g:Powerline_symbols = 'compatible'
endif

let g:tex_flavor='latex'

" default color scheme
" colorscheme hybrid, molokai, lucius, lucius_dark, tomorrow-night-bright, xoria256, skittles_berry, jellybeans2, zenburn
set background=dark
if has("gui_running")
    colorscheme lucius_dark
else
    if $TERM =~ "-256color"
        colorscheme lucius_dark
    else
        colorscheme lucius_dark
    endif
endif

" MiniBufExplorer
let g:miniBufExplCheckDupeBufs      = 1
let g:miniBufExplorerAutoUpdate     = 1
let g:miniBufExplForceDisplay       = 1
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

" Show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

highlight   NonText      guifg=#444444   guibg=#333333
highlight   SpecialKey   guifg=#333333

" turn on filetypes
filetype on
filetype plugin on
filetype indent on

set nopaste

