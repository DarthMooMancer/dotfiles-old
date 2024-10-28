set background=dark

hi clear
let g:colors_name = 'rosepine'

let s:t_Co = exists('&t_Co') && !has('gui_running') ? (&t_Co ?? 0) : -1
let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running')

hi! link CurSearch IncSearch
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link WildMenu IncSearch

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#26233a', '#eb6f92', '#31748f', '#f6c177', '#9ccfd8', '#c4a7e7', '#ebbcba', '#e0def4', '#908caa', '#eb6f92', '#31748f', '#f6c177', '#9ccfd8', '#c4a7e7', '#ebbcba', '#e0def4']
endif
if get(g:,'disable_bg',0)
  hi Normal guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
  hi NormalNC guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
  hi SignColumn guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
  hi StatusLineNC guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
else
  hi Normal guifg=#e0def4 guibg=#191724 gui=NONE cterm=NONE
  hi NormalNC guifg=#e0def4 guibg=#191724 gui=NONE cterm=NONE
  hi SignColumn guifg=#e0def4 guibg=#191724 gui=NONE cterm=NONE
  hi StatusLineNC guifg=#6e6a86 guibg=#191724 gui=NONE cterm=NONE
endif
if get(g:,'disable_float_bg',0)
  hi DarkenedPanel guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi DarkenedStatusline guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Folded guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
  hi NormalFloat guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#908caa guibg=NONE gui=NONE cterm=NONE
  hi StatusLine guifg=#908caa guibg=NONE gui=NONE cterm=NONE
  hi TabLine guifg=#908caa guibg=NONE gui=NONE cterm=NONE
  hi TabLineFill guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
else
  hi DarkenedPanel guifg=NONE guibg=#1f1d2e gui=NONE cterm=NONE
  hi DarkenedStatusline guifg=NONE guibg=#1f1d2e gui=NONE cterm=NONE
  hi Folded guifg=#e0def4 guibg=#1f1d2e gui=NONE cterm=NONE
  hi NormalFloat guifg=#e0def4 guibg=#1f1d2e gui=NONE cterm=NONE
  hi Pmenu guifg=#908caa guibg=#1f1d2e gui=NONE cterm=NONE
  hi StatusLine guifg=#908caa guibg=#1f1d2e gui=NONE cterm=NONE
  hi TabLine guifg=#908caa guibg=#1f1d2e gui=NONE cterm=NONE
  hi TabLineFill guifg=NONE guibg=#1f1d2e gui=NONE cterm=NONE
endif
if !s:italics 
  hi Comment guifg=#908caa guibg=NONE gui=NONE cterm=NONE
else
  hi Comment guifg=#908caa guibg=NONE gui=italic cterm=italic
  if !s:italics
    hi Comment gui=NONE cterm=NONE
  endif
endif
hi ColorColumn guifg=NONE guibg=#26233a gui=NONE cterm=NONE
hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#21202e gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#21202e gui=NONE cterm=NONE
hi CursorLineNr guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE guibg=#333c48 gui=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#26233a gui=NONE cterm=NONE
hi DiffDelete guifg=NONE guibg=#43293a gui=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#433842 gui=NONE cterm=NONE
hi Directory guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#eb6f92 guibg=NONE gui=bold cterm=bold
hi FloatBorder guifg=#403d52 guibg=NONE gui=NONE cterm=NONE
hi FloatTitle guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#191724 guibg=#ebbcba gui=NONE cterm=NONE
hi LineNr guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#e0def4 guibg=#403d52 gui=NONE cterm=NONE
hi ModeMsg guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi MoreMsg guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi NonText guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#21202e gui=NONE cterm=NONE
hi PmenuSel guifg=#e0def4 guibg=#26233a gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#403d52 gui=NONE cterm=NONE
hi Question guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Search guifg=NONE guibg=#403d52 gui=NONE cterm=NONE
hi SpecialKey guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=NONE guibg=NONE guisp=#908caa gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
hi SpellCap guifg=NONE guibg=NONE guisp=#908caa gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
hi SpellLocal guifg=NONE guibg=NONE guisp=#908caa gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
hi SpellRare guifg=NONE guibg=NONE guisp=#908caa gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
hi TabLineSel guifg=#e0def4 guibg=#26233a gui=NONE cterm=NONE
hi Title guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#403d52 guibg=NONE gui=NONE cterm=NONE
hi Visual guifg=NONE guibg=#403d52 gui=NONE cterm=NONE
hi WarningMsg guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#ebbcba guibg=NONE gui=NONE cterm=NONE
hi Character guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#31748f guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Debug guifg=#ebbcba guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#eb6f92 guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#31748f guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#ebbcba guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#31748f guibg=NONE gui=NONE cterm=NONE
hi Label guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Number guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#31748f guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#ebbcba guibg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#ebbcba guibg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#31748f guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi String guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Structure guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Tag guifg=#ebbcba guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi VimwikiHR guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi VimwikiHeader1 guifg=#c4a7e7 guibg=NONE gui=bold cterm=bold
hi VimwikiHeader2 guifg=#9ccfd8 guibg=NONE gui=bold cterm=bold
hi VimwikiHeader3 guifg=#ebbcba guibg=NONE gui=bold cterm=bold
hi VimwikiHeader4 guifg=#f6c177 guibg=NONE gui=bold cterm=bold
hi VimwikiHeader5 guifg=#31748f guibg=NONE gui=bold cterm=bold
hi VimwikiHeader6 guifg=#9ccfd8 guibg=NONE gui=bold cterm=bold
hi VimwikiHeaderChar guifg=#31748f guibg=NONE gui=NONE cterm=NONE
hi VimwikiLink guifg=#c4a7e7 guibg=NONE gui=underline cterm=underline
hi VimwikiList guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi VimwikiNoExistsLink guifg=#eb6f92 guibg=NONE gui=NONE cterm=NONE

if s:t_Co >= 256
  if get(g:,'disable_bg',0)
    hi Normal ctermfg=189 ctermbg=NONE cterm=NONE
    hi NormalNC ctermfg=189 ctermbg=NONE cterm=NONE
    hi SignColumn ctermfg=189 ctermbg=NONE cterm=NONE
    hi StatusLineNC ctermfg=60 ctermbg=NONE cterm=NONE
  else
    hi Normal ctermfg=189 ctermbg=234 cterm=NONE
    hi NormalNC ctermfg=189 ctermbg=234 cterm=NONE
    hi SignColumn ctermfg=189 ctermbg=234 cterm=NONE
    hi StatusLineNC ctermfg=60 ctermbg=234 cterm=NONE
  endif
  if get(g:,'disable_float_bg',0)
    hi DarkenedPanel ctermfg=NONE ctermbg=NONE cterm=NONE
    hi DarkenedStatusline ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Folded ctermfg=189 ctermbg=NONE cterm=NONE
    hi NormalFloat ctermfg=189 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=103 ctermbg=NONE cterm=NONE
    hi StatusLine ctermfg=103 ctermbg=NONE cterm=NONE
    hi TabLine ctermfg=103 ctermbg=NONE cterm=NONE
    hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
  else
    hi DarkenedPanel ctermfg=NONE ctermbg=234 cterm=NONE
    hi DarkenedStatusline ctermfg=NONE ctermbg=234 cterm=NONE
    hi Folded ctermfg=189 ctermbg=234 cterm=NONE
    hi NormalFloat ctermfg=189 ctermbg=234 cterm=NONE
    hi Pmenu ctermfg=103 ctermbg=234 cterm=NONE
    hi StatusLine ctermfg=103 ctermbg=234 cterm=NONE
    hi TabLine ctermfg=103 ctermbg=234 cterm=NONE
    hi TabLineFill ctermfg=NONE ctermbg=234 cterm=NONE
  endif
  if !s:italics 
    hi Comment ctermfg=60 ctermbg=NONE cterm=NONE
  else
    hi Comment ctermfg=60 ctermbg=NONE cterm=italic
    if !s:italics
      hi Comment cterm=NONE
    endif
  endif
  hi ColorColumn ctermfg=NONE ctermbg=235 cterm=NONE
  hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=235 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE
  hi CursorLineNr ctermfg=189 ctermbg=NONE cterm=NONE
  hi DiffAdd ctermfg=NONE ctermbg=237 cterm=NONE
  hi DiffChange ctermfg=NONE ctermbg=235 cterm=NONE
  hi DiffDelete ctermfg=NONE ctermbg=236 cterm=NONE
  hi DiffText ctermfg=NONE ctermbg=237 cterm=NONE
  hi Directory ctermfg=152 ctermbg=NONE cterm=NONE
  hi ErrorMsg ctermfg=204 ctermbg=NONE cterm=bold
  hi FloatBorder ctermfg=238 ctermbg=NONE cterm=NONE
  hi FloatTitle ctermfg=60 ctermbg=NONE cterm=NONE
  hi FoldColumn ctermfg=60 ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=234 ctermbg=181 cterm=NONE
  hi LineNr ctermfg=60 ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=189 ctermbg=238 cterm=NONE
  hi ModeMsg ctermfg=103 ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=183 ctermbg=NONE cterm=NONE
  hi NonText ctermfg=60 ctermbg=NONE cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=235 cterm=NONE
  hi PmenuSel ctermfg=189 ctermbg=235 cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=238 cterm=NONE
  hi Question ctermfg=222 ctermbg=NONE cterm=NONE
  hi Search ctermfg=NONE ctermbg=238 cterm=NONE
  hi SpecialKey ctermfg=152 ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi TabLineSel ctermfg=189 ctermbg=235 cterm=NONE
  hi Title ctermfg=189 ctermbg=NONE cterm=NONE
  hi VertSplit ctermfg=238 ctermbg=NONE cterm=NONE
  hi Visual ctermfg=NONE ctermbg=238 cterm=NONE
  hi WarningMsg ctermfg=222 ctermbg=NONE cterm=NONE
  hi Boolean ctermfg=181 ctermbg=NONE cterm=NONE
  hi Character ctermfg=222 ctermbg=NONE cterm=NONE
  hi Conditional ctermfg=31 ctermbg=NONE cterm=NONE
  hi Constant ctermfg=222 ctermbg=NONE cterm=NONE
  hi Debug ctermfg=181 ctermbg=NONE cterm=NONE
  hi Define ctermfg=183 ctermbg=NONE cterm=NONE
  hi Delimiter ctermfg=103 ctermbg=NONE cterm=NONE
  hi Error ctermfg=204 ctermbg=NONE cterm=NONE
  hi Exception ctermfg=31 ctermbg=NONE cterm=NONE
  hi Float ctermfg=222 ctermbg=NONE cterm=NONE
  hi Function ctermfg=181 ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=181 ctermbg=NONE cterm=NONE
  hi Include ctermfg=183 ctermbg=NONE cterm=NONE
  hi Keyword ctermfg=31 ctermbg=NONE cterm=NONE
  hi Label ctermfg=152 ctermbg=NONE cterm=NONE
  hi Macro ctermfg=183 ctermbg=NONE cterm=NONE
  hi Number ctermfg=222 ctermbg=NONE cterm=NONE
  hi Operator ctermfg=103 ctermbg=NONE cterm=NONE
  hi PreCondit ctermfg=183 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=183 ctermbg=NONE cterm=NONE
  hi Repeat ctermfg=31 ctermbg=NONE cterm=NONE
  hi Special ctermfg=181 ctermbg=NONE cterm=NONE
  hi SpecialChar ctermfg=181 ctermbg=NONE cterm=NONE
  hi SpecialComment ctermfg=183 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=31 ctermbg=NONE cterm=NONE
  hi StorageClass ctermfg=152 ctermbg=NONE cterm=NONE
  hi String ctermfg=222 ctermbg=NONE cterm=NONE
  hi Structure ctermfg=152 ctermbg=NONE cterm=NONE
  hi Tag ctermfg=181 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=183 ctermbg=NONE cterm=NONE
  hi Type ctermfg=152 ctermbg=NONE cterm=NONE
  hi Typedef ctermfg=152 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
  hi VimwikiHR ctermfg=103 ctermbg=NONE cterm=NONE
  hi VimwikiHeader1 ctermfg=183 ctermbg=NONE cterm=bold
  hi VimwikiHeader2 ctermfg=152 ctermbg=NONE cterm=bold
  hi VimwikiHeader3 ctermfg=181 ctermbg=NONE cterm=bold
  hi VimwikiHeader4 ctermfg=222 ctermbg=NONE cterm=bold
  hi VimwikiHeader5 ctermfg=31 ctermbg=NONE cterm=bold
  hi VimwikiHeader6 ctermfg=152 ctermbg=NONE cterm=bold
  hi VimwikiHeaderChar ctermfg=31 ctermbg=NONE cterm=NONE
  hi VimwikiLink ctermfg=183 ctermbg=NONE cterm=underline
  hi VimwikiList ctermfg=183 ctermbg=NONE cterm=NONE
  hi VimwikiNoExistsLink ctermfg=204 ctermbg=NONE cterm=NONE
  unlet s:t_Co s:italics
  finish
endif

" Background: dark
" Color: base           #191724 ~
" Color: surface        #1f1d2e ~
" Color: overlay        #26233a ~
" Color: muted          #6e6a86 ~
" Color: subtle         #908caa ~
" Color: text           #e0def4 ~
" Color: love           #eb6f92 ~
" Color: gold           #f6c177 ~
" Color: rose           #ebbcba ~
" Color: pine           #31748f ~
" Color: foam           #9ccfd8 ~
" Color: iris           #c4a7e7 ~
" Color: highlight_low  #21202e ~
" Color: highlight_med  #403d52 ~
" Color: highlight_high #524f67 ~
" Color: diff_add       #333c48 ~
" Color: diff_delete    #43293a ~
" Color: diff_text      #433842 ~
" Term colors: overlay love pine gold
" Term colors: foam    iris rose text
" Term colors: subtle  love pine gold
" Term colors: foam    iris rose text
" vim: et ts=2 sw=2

