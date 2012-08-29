" ~/.vim/sessions/logsparser.vim: Vim session script.
" Created by session.vim 1.5 on 12 July 2012 at 10:33:47.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimLt
silent! set guifont=Liberation\ Mono\ Bold\ 12
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'molokai' | colorscheme molokai | endif
call setqflist([{'lnum': 13, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'EventCall.java', 'text': 'public class EventCall {'}, {'lnum': 8, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'StaticAsyncHttpCall.java', 'text': 'public class StaticAsyncHttpCall extends Thread {'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +48 ~/.gvfs/SFTP\ on\ logs.mesury.ru/var/virtual/logs.mesury.ru/cron/parser_new.pl
badd +238 ~/.vimrc
silent! argdel *
set lines=51 columns=190
edit ~/.gvfs/SFTP\ on\ logs.mesury.ru/var/virtual/logs.mesury.ru/cron/parser_new.pl
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 48 - ((23 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
48
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w

" vim: ft=vim ro nowrap smc=128
