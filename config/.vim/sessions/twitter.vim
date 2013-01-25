" ~/.vim/sessions/twitter.vim: Vim session script.
" Created by session.vim 1.5 on 16 July 2012 at 09:38:24.
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
call setqflist([])
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
badd +332 Desktop/twitter.pl
badd +1 bash\ -\ 1
badd +197 .vimrc
badd +1 Desktop/twitterapi
badd +1 Desktop/tcomment.vba
badd +3 .vim/.VimballRecord
badd +29 ~/.gvfs/SFTP\ for\ master\ on\ 37.128.161.2/opt/APP/master/cron/twitter/twitter.pl
badd +38 ~/.gvfs/SFTP\ for\ master\ on\ 37.128.161.2/opt/APP/master/cron/twitter/requests.pl
silent! argdel *
set lines=51 columns=189
edit Desktop/twitterapi
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
wincmd =
argglobal
let s:l = 22 - ((12 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
wincmd w
argglobal
edit ~/.gvfs/SFTP\ for\ master\ on\ 37.128.161.2/opt/APP/master/cron/twitter/twitter.pl
let s:l = 634 - ((10 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
634
normal! 0
wincmd w
2wincmd w
wincmd =
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
2wincmd w

" vim: ft=vim ro nowrap smc=128
