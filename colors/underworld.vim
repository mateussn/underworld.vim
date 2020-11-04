hi clear
syntax reset

hi Normal guibg=#000000 guifg=#959595
hi Comment guifg=#5a5a5a

"
" GUI
"

" Cursor
hi CursorColumn guibg=#121212
hi! link CursorLine CursorColumn
hi CursorLineNr gui=none guibg=#080808 guifg=#5a5a5a

" Diff Mode
hi DiffAdd guibg=#5ea55b guifg=#000000
hi DiffChange guibg=#b58e6c guifg=#000000
hi DiffDelete guibg=#cb7f95 guifg=#252525
hi DiffText guibg=#8d9c55 guifg=#000000

" Mark
hi ColorColumn guibg=#080808
hi! link FoldColumn LineNr
hi! link Folded FoldColumn
hi LineNr guibg=#080808 guifg=#383838
hi! link SignColumn LineNr

" Menu
hi Pmenu guibg=#121212 guifg=#5a5a5a
hi PmenuSBar guibg=#1a1a1a
hi PmenuSel guibg=#1a1a1a guifg=#959595
hi PmenuThumb guibg=#252525
hi WildMenu gui=bold guibg=#5a5a5a guifg=#000000

" Message
hi ErrorMsg gui=bold guibg=none guifg=#cb7f95
hi MoreMsg guifg=#5ea55b
hi Question guifg=#b58e6c
hi WarningMsg guifg=#8d9c55

" Search
hi IncSearch gui=bold guibg=#373737 guifg=#9a8ad7
hi Search gui=bold guibg=#373737 guifg=#8d9c55
hi Visual guibg=#1a1a1a

" Spell
hi SpellBad guisp=#cb7f95
hi SpellCap guisp=#5ea55b
hi SpellLocal guisp=#8d9c55
hi SpellRare guisp=#b58e6c

" Status Line
hi StatusLine gui=bold guibg=#121212 guifg=#959595
hi StatusLineNC gui=none guibg=#080808 guifg=#383838
hi VertSplit gui=none guibg=#080808 guifg=#252525

" Tabs
hi TabLine gui=none guibg=#121212 guifg=#5a5a5a
hi TabLineFill gui=none guibg=#080808
hi TabLineSel guibg=#000000 guifg=#959595

" Misc
hi Conceal guibg=none guifg=#58a38d
hi Directory guifg=#c47bc7
hi Error guibg=#cb7f95 guifg=#000000
hi Ignore guifg=none
hi MatchParen guibg=#252525 guifg=#c47bc7
hi NonText guifg=#252525
hi SpecialKey guifg=#58a38d 
hi Title guifg=#58a38d

"
" Syntax
"

" Constants
hi Character guifg=#5ea55b
hi Constant guifg=#b58e6c
hi Number guifg=#8d9c55
hi! link String Character

" Keywords
hi Identifier guifg=#729abc
hi Preproc guifg=#c97ea6
hi Statement gui=none guifg=#c47bc7
hi Type gui=none guifg=#9a8ad7

" Special
hi Special guifg=#58a38d
hi Todo gui=bold guibg=none guifg=#58a38d
hi Underlined gui=underline guifg=none

"
" Customizations
"

function s:SetOpt(name, def)
  if !exists('g:underworld_custom_' . a:name)
    exe 'let g:underworld_custom_' . a:name '=' a:def
  endif
endfunction

" Set default options.
call s:SetOpt('global', 1)
call s:SetOpt('coc', 1)
call s:SetOpt('diff', 1)
call s:SetOpt('fasm', 1)
call s:SetOpt('gitgutter', 1)
call s:SetOpt('html', 1)
call s:SetOpt('nerdtree', 1)
call s:SetOpt('vim', 1)

if g:underworld_custom_global ==# 1
  if g:underworld_custom_coc ==# 1
    hi CocBold gui=bold
    hi! link CocUnderline Underlined

    hi CocErrorFloat guifg=#cb7f95
    hi CocHintFloat guifg=#b58e6c
    hi CocInfoFloat guifg=#5ea55b
    hi CocWarningFloat guifg=#8d9c55

    hi CocErrorSign guibg=#080808 guifg=#cb7f95
    hi CocHintSign guibg=#080808 guifg=#b58e6c
    hi CocInfoSign guibg=#080808 guifg=#5ea55b
    hi CocWarningSign guibg=#080808 guifg=#8d9c55
  endif

  if g:underworld_custom_diff ==# 1
    hi diffAdded guifg=#5ea55b
    hi! link diffFile Comment
    hi diffLine guifg=#c47bc7
    hi diffRemoved guifg=#cb7f95
    hi diffSubname guifg=#9a8ad7
  endif

  if g:underworld_custom_fasm ==# 1
    hi! link fasmLabel Identifier
    hi! link fasmNumber Number
    hi! link fasmOperator Normal
    hi! link fasmSymbol Normal
  endif

  if g:underworld_custom_gitgutter ==# 1
    hi GitGutterAdd guibg=#080808 guifg=#5ea55b
    hi GitGutterChange guibg=#080808 guifg=#8d9c55
    hi GitGutterChangeDelete guibg=#080808 guifg=#b58e6c
    hi GitGutterDelete guibg=#080808 guifg=#cb7f95
  endif

  if g:underworld_custom_html ==# 1
    hi! link htmlEndTag htmlTag
    hi! link htmlTag Comment
  endif

  if g:underworld_custom_nerdtree ==# 1
    hi! link NERDTreeBookmark Tag
    hi! link NERDTreeClosable NERDTreeDir
    hi NERDTreeCWD guifg=#c97ea6
    hi NERDTreeDir guifg=#c47bc7
    hi NERDTreeDirSlash guifg=#9a8ad7
    hi NERDTreeFile guifg=#959595
    hi! link NERDTreeOpenable NERDTreeDir
  endif

  if g:underworld_custom_vim ==# 1
    hi! link vimCommentTitle Todo
  endif
endif

"
" Terminal
"

if has('nvim') && exists('&termguicolors') && &termguicolors
	let g:terminal_color_0 = '#000000'
	let g:terminal_color_1 = '#cb7f95'
	let g:terminal_color_2 = '#5ea55b'
	let g:terminal_color_3 = '#b58e6c'
	let g:terminal_color_4 = '#729abc'
	let g:terminal_color_5 = '#9a8ad7'
	let g:terminal_color_6 = '#58a38b'
	let g:terminal_color_7 = '#383838'
	let g:terminal_color_8 = '#252525'
	let g:terminal_color_9 = '#cb7f95'
	let g:terminal_color_10 = '#5ea55b'
	let g:terminal_color_11 = '#8d9c55'
	let g:terminal_color_12 = '#729abc'
	let g:terminal_color_13 = '#c47bc7'
	let g:terminal_color_14 = '#58a38b'
	let g:terminal_color_15 = '#959595'

	let g:terminal_color_background = g:terminal_color_0
	let g:terminal_color_foreground = g:terminal_color_15
endif

let g:colors_name = 'underworld'
