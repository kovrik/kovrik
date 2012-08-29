" Vim color file - darkburn
" Generated by http://bytefluent.com/vivify 2012-07-18
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "darkburn"

hi IncSearch guifg=#385f38 guibg=#f8f893 guisp=#f8f893 gui=NONE ctermfg=65 ctermbg=228 cterm=NONE
hi WildMenu guifg=#cbecd0 guibg=#2c302d guisp=#2c302d gui=underline ctermfg=194 ctermbg=236 cterm=underline
hi SignColumn guifg=#9fafaf guibg=#181818 guisp=#181818 gui=bold ctermfg=109 ctermbg=234 cterm=bold
hi SpecialComment guifg=#82a282 guibg=NONE guisp=NONE gui=bold ctermfg=108 ctermbg=NONE cterm=bold
hi Typedef guifg=#dfe4cf guibg=NONE guisp=NONE gui=bold ctermfg=187 ctermbg=NONE cterm=bold
hi Title guifg=#efefef guibg=NONE guisp=NONE gui=bold ctermfg=255 ctermbg=NONE cterm=bold
hi Folded guifg=#93b3a3 guibg=#3f4040 guisp=#3f4040 gui=NONE ctermfg=108 ctermbg=238 cterm=NONE
hi PreCondit guifg=#dfaf8f guibg=NONE guisp=NONE gui=bold ctermfg=180 ctermbg=NONE cterm=bold
hi Include guifg=#ffcfaf guibg=NONE guisp=NONE gui=bold ctermfg=223 ctermbg=NONE cterm=bold
hi TabLineSel guifg=#efefef guibg=#1c1c1b guisp=#1c1c1b gui=bold ctermfg=255 ctermbg=234 cterm=bold
hi StatusLineNC guifg=#2e3330 guibg=#88b090 guisp=#88b090 gui=NONE ctermfg=236 ctermbg=108 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#404040 guibg=NONE guisp=NONE gui=NONE ctermfg=238 ctermbg=NONE cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#ecbcbc guibg=#41363c guisp=#41363c gui=bold ctermfg=181 ctermbg=238 cterm=bold
hi ErrorMsg guifg=#80d4aa guibg=#2f2f2f guisp=#2f2f2f gui=bold ctermfg=115 ctermbg=236 cterm=bold
"hi Ignore -- no settings --
hi Debug guifg=#bca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=138 ctermbg=NONE cterm=bold
hi PMenuSbar guifg=#000000 guibg=#2e3330 guisp=#2e3330 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Identifier guifg=#dcdcdc guibg=NONE guisp=NONE gui=NONE ctermfg=253 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#9fbfd6 guibg=NONE guisp=NONE gui=bold ctermfg=152 ctermbg=NONE cterm=bold
hi Conditional guifg=#f0dfaf guibg=NONE guisp=NONE gui=bold ctermfg=223 ctermbg=NONE cterm=bold
hi StorageClass guifg=#c3bf9f guibg=NONE guisp=NONE gui=bold ctermfg=187 ctermbg=NONE cterm=bold
hi Todo guifg=#dfdfdf guibg=#1c1c1c guisp=#1c1c1c gui=bold ctermfg=254 ctermbg=234 cterm=bold
hi Special guifg=#9fbfd6 guibg=NONE guisp=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
hi LineNr guifg=#9fafaf guibg=#262626 guisp=#262626 gui=NONE ctermfg=109 ctermbg=235 cterm=NONE
hi StatusLine guifg=#313633 guibg=#ccdc90 guisp=#ccdc90 gui=NONE ctermfg=237 ctermbg=186 cterm=NONE
hi Normal guifg=#d7d7d7 guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=188 ctermbg=234 cterm=NONE
hi Label guifg=#dfcfaf guibg=NONE guisp=NONE gui=underline ctermfg=187 ctermbg=NONE cterm=underline
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#ffd7af guibg=#262626 guisp=#262626 gui=NONE ctermfg=223 ctermbg=235 cterm=NONE
hi Search guifg=#ffffe0 guibg=#284f28 guisp=#284f28 gui=NONE ctermfg=230 ctermbg=22 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#8f8f8f guibg=NONE guisp=NONE gui=NONE ctermfg=245 ctermbg=NONE cterm=NONE
hi Statement guifg=#6fb86f guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi SpellRare guifg=#bc8cbc guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
"hi EnumerationValue -- no settings --
hi Comment guifg=#7f9f7f guibg=NONE guisp=NONE gui=italic ctermfg=108 ctermbg=NONE cterm=NONE
hi Character guifg=#dca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=181 ctermbg=NONE cterm=bold
hi Float guifg=#c0bed1 guibg=NONE guisp=NONE gui=NONE ctermfg=146 ctermbg=NONE cterm=NONE
hi Number guifg=#8cd0d3 guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi Boolean guifg=#dca3a3 guibg=NONE guisp=NONE gui=NONE ctermfg=181 ctermbg=NONE cterm=NONE
hi Operator guifg=#f0efd0 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#303030 guisp=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi Union -- no settings --
hi TabLineFill guifg=#cfcfaf guibg=#181818 guisp=#181818 gui=bold ctermfg=187 ctermbg=234 cterm=bold
hi Question guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi WarningMsg guifg=#ffffff guibg=#333333 guisp=#333333 gui=bold ctermfg=15 ctermbg=236 cterm=bold
hi VisualNOS guifg=#333333 guibg=#f18c96 guisp=#f18c96 gui=bold,underline ctermfg=236 ctermbg=210 cterm=bold,underline
hi DiffDelete guifg=#333333 guibg=#464646 guisp=#464646 gui=NONE ctermfg=236 ctermbg=238 cterm=NONE
hi ModeMsg guifg=#6fb86f guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi CursorColumn guifg=#dcdccc guibg=#2b2b2b guisp=#2b2b2b gui=NONE ctermfg=187 ctermbg=235 cterm=NONE
hi Define guifg=#ffcfaf guibg=NONE guisp=NONE gui=bold ctermfg=223 ctermbg=NONE cterm=bold
hi Function guifg=#efef8f guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#93b3a3 guibg=#3f4040 guisp=#3f4040 gui=NONE ctermfg=108 ctermbg=238 cterm=NONE
hi PreProc guifg=#ffb23f guibg=NONE guisp=NONE gui=bold ctermfg=215 ctermbg=NONE cterm=bold
"hi EnumerationName -- no settings --
hi Visual guifg=#000000 guibg=#71d3b4 guisp=#71d3b4 gui=NONE ctermfg=NONE ctermbg=79 cterm=NONE
hi MoreMsg guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi SpellCap guifg=#8c8cbc guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi VertSplit guifg=#2e3330 guibg=#688060 guisp=#688060 gui=NONE ctermfg=236 ctermbg=65 cterm=NONE
hi Exception guifg=#c3bf9f guibg=NONE guisp=NONE gui=bold ctermfg=187 ctermbg=NONE cterm=bold
hi Keyword guifg=#f0dfaf guibg=NONE guisp=NONE gui=bold ctermfg=223 ctermbg=NONE cterm=bold
hi Type guifg=#dfdfbf guibg=NONE guisp=NONE gui=bold ctermfg=187 ctermbg=NONE cterm=bold
hi DiffChange guifg=NONE guibg=#333333 guisp=#333333 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Cursor guifg=#000d18 guibg=#8faf9f guisp=#8faf9f gui=bold ctermfg=23 ctermbg=108 cterm=bold
hi SpellLocal guifg=#9ccc9c guibg=NONE guisp=NONE gui=NONE ctermfg=151 ctermbg=NONE cterm=NONE
hi Error guifg=#ef9f9f guibg=#201010 guisp=#201010 gui=bold ctermfg=217 ctermbg=234 cterm=bold
hi PMenu guifg=#a8a8a8 guibg=#000000 guisp=#000000 gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#9ece9e guibg=NONE guisp=NONE gui=NONE ctermfg=151 ctermbg=NONE cterm=NONE
hi Constant guifg=#dca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=181 ctermbg=NONE cterm=bold
"hi DefinedName -- no settings --
hi Tag guifg=#e89393 guibg=NONE guisp=NONE gui=bold ctermfg=174 ctermbg=NONE cterm=bold
hi String guifg=#b75151 guibg=NONE guisp=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#040404 guibg=#a0afa0 guisp=#a0afa0 gui=NONE ctermfg=NONE ctermbg=108 cterm=NONE
hi MatchParen guifg=#f0f0c0 guibg=#383838 guisp=#383838 gui=bold ctermfg=230 ctermbg=237 cterm=bold
"hi LocalVariable -- no settings --
hi Repeat guifg=#ffd7a7 guibg=NONE guisp=NONE gui=bold ctermfg=223 ctermbg=NONE cterm=bold
hi SpellBad guifg=#dc8c6c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
"hi CTagsClass -- no settings --
hi Directory guifg=#dcdccc guibg=NONE guisp=NONE gui=bold ctermfg=187 ctermbg=NONE cterm=bold
hi Structure guifg=#efefaf guibg=NONE guisp=NONE gui=bold ctermfg=229 ctermbg=NONE cterm=bold
hi Macro guifg=#ffcfaf guibg=NONE guisp=NONE gui=bold ctermfg=223 ctermbg=NONE cterm=bold
hi Underlined guifg=#dcdccc guibg=NONE guisp=NONE gui=underline ctermfg=187 ctermbg=NONE cterm=underline
hi DiffAdd guifg=#709080 guibg=#313c36 guisp=#313c36 gui=bold ctermfg=65 ctermbg=237 cterm=bold
hi TabLine guifg=#b6bf98 guibg=#181818 guisp=#181818 gui=bold ctermfg=144 ctermbg=234 cterm=bold
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=#ffffff guibg=#8800ff guisp=#8800ff gui=NONE ctermfg=15 ctermbg=93 cterm=NONE
hi cursorim guifg=#7f7f7f guibg=#FFE568 guisp=#FFE568 gui=NONE ctermfg=8 ctermbg=221 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi user1 guifg=#ffffff guibg=#00008b guisp=#00008b gui=bold ctermfg=15 ctermbg=18 cterm=bold
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
"hi clear -- no settings --
hi taglistcomment guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi taglisttitle guifg=#ff00af guibg=#000000 guisp=#000000 gui=NONE ctermfg=199 ctermbg=NONE cterm=NONE
hi user4 guifg=#00ffdf guibg=#0000df guisp=#0000df gui=NONE ctermfg=50 ctermbg=20 cterm=NONE
hi user5 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi user3 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi taglistfilename guifg=#ffffff guibg=#870087 guisp=#870087 gui=NONE ctermfg=15 ctermbg=90 cterm=NONE
hi taglisttagscope guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi rubypseudovariable guifg=#339999 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi rubystringdelimiter guifg=#66FF00 guibg=NONE guisp=NONE gui=NONE ctermfg=82 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#339999 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi rubyinterpolation guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi sourceline guifg=#88bbff guibg=#000038 guisp=#000038 gui=NONE ctermfg=111 ctermbg=17 cterm=NONE
hi javaexceptions guifg=#dc9a88 guibg=NONE guisp=NONE gui=NONE ctermfg=174 ctermbg=NONE cterm=NONE
hi bufexploreractbuf guifg=#424298 guibg=#000020 guisp=#000020 gui=NONE ctermfg=61 ctermbg=17 cterm=NONE
hi bufexplorertogglesplit guifg=NONE guibg=#000030 guisp=#000030 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi mytaglisttagscope guifg=#589bcf guibg=#000028 guisp=#000028 gui=NONE ctermfg=74 ctermbg=17 cterm=NONE
hi level14c guifg=#ccaa88 guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi bufexplorertitle guifg=NONE guibg=#000030 guisp=#000030 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi level8c guifg=#ffddbb guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi mytaglistcomment guifg=#589bcf guibg=#000028 guisp=#000028 gui=NONE ctermfg=74 ctermbg=17 cterm=NONE
hi bufexplorersorttype guifg=NONE guibg=#000030 guisp=#000030 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi bufexplorermapping guifg=NONE guibg=#000030 guisp=#000030 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi spellerrors guifg=#ffffff guibg=#ff0000 guisp=#ff0000 gui=NONE ctermfg=15 ctermbg=196 cterm=NONE
hi bufexploreropenin guifg=NONE guibg=#000030 guisp=#000030 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi level11c guifg=#ffddbb guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi bufexplorerbufnbr guifg=#222288 guibg=#000030 guisp=#000030 gui=NONE ctermfg=18 ctermbg=17 cterm=NONE
hi level7c guifg=#8b008b guibg=NONE guisp=NONE gui=NONE ctermfg=90 ctermbg=NONE cterm=NONE
hi level16c guifg=#aa8866 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi javaclassdecl guifg=#be7012 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi javatypedef guifg=#a63322 guibg=NONE guisp=NONE gui=bold ctermfg=124 ctermbg=NONE cterm=bold
hi level6c guifg=#8b0000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi mytaglistfilename guifg=#88bbff guibg=#000028 guisp=#000028 gui=NONE ctermfg=111 ctermbg=17 cterm=NONE
hi level1c guifg=#775533 guibg=NONE guisp=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
hi level15c guifg=#bb9977 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi bufexplorerlockedbuf guifg=#222288 guibg=#000030 guisp=#000030 gui=NONE ctermfg=18 ctermbg=17 cterm=NONE
hi bufexplorermodbuf guifg=#222288 guibg=#000030 guisp=#000030 gui=NONE ctermfg=18 ctermbg=17 cterm=NONE
hi level9c guifg=#eeccaa guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi bufexplorerhelp guifg=NONE guibg=#000030 guisp=#000030 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi javadebug guifg=#689879 guibg=NONE guisp=NONE gui=NONE ctermfg=65 ctermbg=NONE cterm=NONE
hi javadoccomment guifg=#88b899 guibg=NONE guisp=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE
hi level5c guifg=#008b8b guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi bufexplorertoggleopen guifg=NONE guibg=#000030 guisp=#000030 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi bufexplorersortby guifg=NONE guibg=#000030 guisp=#000030 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi level10c guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi bufexplorercurbuf guifg=#ffffff guibg=#000030 guisp=#000030 gui=NONE ctermfg=15 ctermbg=17 cterm=NONE
hi level4c guifg=#006400 guibg=NONE guisp=NONE gui=NONE ctermfg=22 ctermbg=NONE cterm=NONE
hi bufexplorerhidbuf guifg=#222288 guibg=#000030 guisp=#000030 gui=NONE ctermfg=18 ctermbg=17 cterm=NONE
hi bufexplorerunlbuf guifg=#222288 guibg=#000030 guisp=#000030 gui=NONE ctermfg=18 ctermbg=17 cterm=NONE
hi mytaglisttagname guifg=#88bbff guibg=#000028 guisp=#000028 gui=NONE ctermfg=111 ctermbg=17 cterm=NONE
hi level12c guifg=#eeccaa guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi bufexplorerxxxbuf guifg=#8888ff guibg=#101070 guisp=#101070 gui=NONE ctermfg=105 ctermbg=17 cterm=NONE
hi level3c guifg=#a9a9a9 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi mytaglisttitle guifg=#88bbff guibg=#000028 guisp=#000028 gui=NONE ctermfg=111 ctermbg=17 cterm=NONE
hi level13c guifg=#ddbb99 guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi level2c guifg=#00008b guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi bufexploreraltbuf guifg=#8888ff guibg=#101070 guisp=#101070 gui=NONE ctermfg=105 ctermbg=17 cterm=NONE
hi javastring guifg=#b87849 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi javarepeat guifg=#bcba88 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi javafuncdef guifg=#b53423 guibg=NONE guisp=NONE gui=bold ctermfg=124 ctermbg=NONE cterm=bold
hi javascopedecl guifg=#854433 guibg=NONE guisp=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
hi jinjafilter guifg=#ff0086 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=198 ctermbg=230 cterm=NONE
hi pythondoctest2 guifg=#3b916a guibg=NONE guisp=NONE gui=NONE ctermfg=72 ctermbg=NONE cterm=NONE
hi jinjaraw guifg=#aaaaaa guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=248 ctermbg=230 cterm=NONE
hi htmltagn guifg=#4aa04a guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#f00000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi jinjaoperator guifg=#ffffff guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=15 ctermbg=230 cterm=NONE
hi jinjavarblock guifg=#ff0007 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=196 ctermbg=230 cterm=NONE
hi jinjaattribute guifg=#dd7700 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=172 ctermbg=230 cterm=NONE
hi pythondoctest guifg=#2f5f49 guibg=NONE guisp=NONE gui=NONE ctermfg=23 ctermbg=NONE cterm=NONE
hi htmltagname guifg=#4aa04a guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi jinjastring guifg=#0086d2 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=32 ctermbg=230 cterm=NONE
hi htmlspecialtagname guifg=#4aa04a guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi pythonfunction guifg=#ee0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
"hi pythonspaceerror -- no settings --
hi jinjacomment guifg=#008800 guibg=#002300 guisp=#002300 gui=italic ctermfg=28 ctermbg=22 cterm=NONE
hi jinjanumber guifg=#bf0945 guibg=#fbf4c7 guisp=#fbf4c7 gui=bold ctermfg=1 ctermbg=230 cterm=bold
hi pythoncoding guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi jinjatagblock guifg=#ff0007 guibg=#fbf4c7 guisp=#fbf4c7 gui=bold ctermfg=196 ctermbg=230 cterm=bold
hi jinjastatement guifg=#fb660a guibg=#fbf4c7 guisp=#fbf4c7 gui=bold ctermfg=202 ctermbg=230 cterm=bold
hi pythonbuiltinfunc guifg=#2b6ba2 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi htmltag guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi pythonrun guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi pythonclass guifg=#ff0086 guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonbuiltinobj guifg=#2b6ba2 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi jinjaspecial guifg=#008ffd guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=33 ctermbg=230 cterm=NONE
hi htmlendtag guifg=#00bdec guibg=NONE guisp=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi jinjavariable guifg=#92cd35 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=149 ctermbg=230 cterm=NONE
hi scrollbar guifg=#ddbb00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
"hi semicolon -- no settings --
hi special guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi preproc guifg=#d1d435 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=185 ctermbg=236 cterm=NONE
hi type guifg=#e6ac32 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=172 ctermbg=236 cterm=NONE
hi statement guifg=#CCEE00 guibg=NONE guisp=NONE gui=italic ctermfg=190 ctermbg=NONE cterm=NONE
hi normal guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=254 ctermbg=236 cterm=NONE
hi constant guifg=#d1c79e guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=187 ctermbg=236 cterm=NONE
hi underlined guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=underline ctermfg=254 ctermbg=236 cterm=underline
hi titled guifg=#ffffff guibg=#221100 guisp=#221100 gui=NONE ctermfg=15 ctermbg=52 cterm=NONE
hi incsearch guifg=#ffffff guibg=#0066cc guisp=#0066cc gui=NONE ctermfg=15 ctermbg=26 cterm=NONE
hi htmlh2 guifg=#ffffff guibg=#221100 guisp=#221100 gui=bold ctermfg=15 ctermbg=52 cterm=bold
hi cursor guifg=NONE guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
"hi htmlitalic -- no settings --
"hi htmlboldunderlineitalic -- no settings --
"hi htmlbolditalic -- no settings --
"hi htmlunderlineitalic -- no settings --
"hi htmlbold -- no settings --
"hi htmlboldunderline -- no settings --
"hi htmlunderline -- no settings --
"hi default -- no settings --
hi menu guifg=#ffddaa guibg=#000000 guisp=#000000 gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi attribute guifg=#CCCCCC guibg=NONE guisp=NONE gui=italic ctermfg=252 ctermbg=NONE cterm=NONE
hi statementu guifg=#CCEE00 guibg=NONE guisp=NONE gui=underline ctermfg=190 ctermbg=NONE cterm=underline
hi keyword guifg=#CCEE00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi comment guifg=#BBCCEE guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi underline guifg=#afafff guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi pythonimport guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunction guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
"hi htmllink -- no settings --
hi browsesuffixes guifg=#cdc8b1 guibg=#1F3055 guisp=#1F3055 gui=NONE ctermfg=187 ctermbg=17 cterm=NONE
