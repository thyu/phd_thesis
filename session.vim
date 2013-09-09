let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>Tex_Completion :call Tex_Complete("default","text")
imap <silent> <Plug> <Nop>
inoremap <silent> <Plug>Tex_LeftRight =Tex_LeftRight()
inoremap <silent> <Plug>Tex_MathCal =Tex_MathCal()
inoremap <silent> <Plug>Tex_MathBF =Tex_MathBF()
inoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
inoremap <silent> <Plug>Tex_FastCommandInsert =Tex_DoCommand('no')
inoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
inoremap <silent> <Plug>Tex_FastEnvironmentInsert =Tex_FastEnvironmentInsert("no")
imap <F1> <Plug>Tex_Help
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
imap <Right> <nop> 
imap <Left> <Nop>
imap <Down> <Nop>
imap <Up> <Nop>
nnoremap  h
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nnoremap  k
nnoremap  l
vnoremap , :call ExecMap(',', 'v')
vnoremap ,pi :call VEnclose('', '', '\begin{picture}', '\end{picture}')
vnoremap ,mp :call VEnclose('', '', '\begin{minipage}', '\end{minipage}')
vnoremap <silent> ,lr :call VEnclose('\sbox{', '}', '\begin{lrbox}', '\end{lrbox}')
vnoremap ,fi :call VEnclose('', '', '\begin{figure}', '\end{figure}')
vnoremap ,pg :call VEnclose('\paragraph{', '}', '', '')
vnoremap ,s2 :call VEnclose('\subsubsection{', '}', '', '')
vnoremap ,ss :call VEnclose('\subsection{', '}', '', '')
vnoremap ,se :call VEnclose('\section{', '}', '', '')
vnoremap ,ch :call VEnclose('\chapter{', '}', '', '')
vnoremap ,pa :call VEnclose('\part{', '}', '', '')
vnoremap <silent> ,sl :call VEnclose('', '', '\begin{slide}', '\end{slide}')
vnoremap <silent> ,ov :call VEnclose('', '', '\begin{overlay}', '\end{overlay}')
vnoremap <silent> ,no :call VEnclose('', '', '\begin{note}', '\end{note}')
vnoremap <silent> ,tb :call VEnclose('', '', '\begin{thebibliography}', '\end{thebibliography}')
vnoremap <silent> ,ve :call VEnclose('', '', '\begin{verse}', '\end{verse}')
vnoremap <silent> ,vm :call VEnclose('\verb|', '|', '\begin{verbatim}', '\end{verbatim}')
vnoremap <silent> ,tp :call VEnclose('', '', '\begin{titlepage}', '\end{titlepage}')
vnoremap ,sp :call VEnclose('\subparagraph{', '}', '', '')
vnoremap <silent> ,qe :call VEnclose('', '', '\begin{quote}', '\end{quote}')
vnoremap <silent> ,qn :call VEnclose('', '', '\begin{quotation}', '\end{quotation}')
vnoremap <silent> ,fr :call VEnclose('{\raggedright ', '}', '\begin{flushright}', '\end{flushright}')
vnoremap <silent> ,fl :call VEnclose('', '', '\begin{flushleft}', '\end{flushleft}')
vnoremap <silent> ,fc :call VEnclose('', '', '\begin{filecontents}', '\end{filecontents}')
vnoremap <silent> ,do :call VEnclose('', '', '\begin{document}', '\end{document}')
vnoremap <silent> ,ce :call VEnclose('\centerline{', '}', '\begin{center}', '\end{center}')
vnoremap <silent> ,ap :call VEnclose('', '', '\begin{appendix}', '\end{appendix}')
vnoremap <silent> ,ab :call VEnclose('', '', '\begin{abstract}', '\end{abstract}')
vnoremap <silent> ,ma :call VEnclose('', '', '\begin{math}', '\end{math}')
vnoremap <silent> ,eq :call VEnclose('', '', '\begin{equation}', '\end{equation}')
vnoremap <silent> ,ea :call VEnclose('', '', '\begin{eqnarray}', '\end{eqnarray}')
vnoremap <silent> ,dm :call VEnclose('', '', '\begin{displaymath}', '\end{displaymath}')
vnoremap ,ar :call VEnclose('', '', '\begin{array}', '\end{array}')
vnoremap ,tr :call VEnclose('', '', '\begin{tabular}', '\end{tabular}')
vnoremap <silent> ,tg :call VEnclose('', '', '\begin{tabbing}', '\end{tabbing}')
vnoremap ,te :call VEnclose('', '', '\begin{table}', '\end{table}')
vnoremap <silent> ,tl :call VEnclose('', '', '\begin{trivlist}', '\end{trivlist}')
vnoremap <silent> ,ti :call VEnclose('', '', '\begin{theindex}', '\end{theindex}')
vnoremap <silent> ,it :call VEnclose('', '', '\begin{itemize}', '\end{itemize}')
vnoremap <silent> ,en :call VEnclose('', '', '\begin{enumerate}', '\end{enumerate}')
vnoremap ,de :call VEnclose('', '', '\begin{description}', '\end{description}')
vnoremap ,li :call VEnclose('', '', '\begin{list}', '\end{list}')
map ,u :source ~/.vimrc " update the system settings from my vimrc file
map ,e :e ~/.vimrc      " edit my .vimrc file
map ,v :sp ~/.vimrc 	" edit my .vimrc file in a split
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vnoremap ` :call ExecMap('`', 'v')
vnoremap <silent> `em :call VEnclose('\emph{', '}', '{\em', '\/}')
vnoremap <silent> `it :call VEnclose('\textit{', '}', '{\itshape ', '}')
vnoremap <silent> `sc :call VEnclose('\textsc{', '}', '{\scshape ', '}')
vnoremap <silent> `sl :call VEnclose('\textsl{', '}', '{\slshape ', '}')
vnoremap <silent> `up :call VEnclose('\textup{', '}', '{\upshape ', '}')
vnoremap <silent> `rm :call VEnclose('\textrm{', '}', '{\rmfamily ', '}')
vnoremap <silent> `sf :call VEnclose('\textsf{', '}', '{\sffamily ', '}')
vnoremap <silent> `tt :call VEnclose('\texttt{', '}', '{\ttfamily ', '}')
vnoremap <silent> `md :call VEnclose('\textmd{', '}', '{\mdseries ', '}')
vnoremap <silent> `bf :call VEnclose('\textbf{', '}', '{\bfseries ', '}')
vnoremap <silent> `$ :call VEnclose('$', '$', '\[', '\]')
vnoremap <silent> `{ :call VEnclose('\left\{ ', ' \right\}', '\left\{', '\right\}')
vnoremap <silent> `[ :call VEnclose('\left[ ', ' \right]', '\left[', '\right]')
vnoremap <silent> `( :call VEnclose('\left( ', ' \right)', '\left(', '\right)')
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
nnoremap j gj
nnoremap k gk
nnoremap <silent> <Plug>Tex_LeftRight :call Tex_PutLeftRight()
vnoremap <silent> <Plug>Tex_MathCal `>a}`<i\mathcal{
vnoremap <silent> <Plug>Tex_MathBF `>a}`<i\mathbf{
nnoremap <Plug>Tex_RefreshFolds :call MakeTexFolds(1)
nnoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
vnoremap <silent> <Plug>Tex_FastCommandInsert :call Tex_DoCommand('yes')
nnoremap <silent> <Plug>Tex_FastCommandInsert i=Tex_DoCommand('no')
nnoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
vnoremap <silent> <Plug>Tex_FastEnvironmentInsert :call Tex_FastEnvironmentInsert("yes")
nnoremap <silent> <Plug>Tex_FastEnvironmentInsert i=Tex_FastEnvironmentInsert("no")
nmap <F1> <Plug>Tex_Help
nmap <silent> <Plug> i
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
map <F2> :NERDTreeToggle
map <Right> <Nop>
map <Left> <Nop>
map <Down> <Nop>
map <Up> <Nop>
imap <NL> <Plug>IMAP_JumpForward
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set cindent
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set hlsearch
set laststatus=2
set mouse=a
set pastetoggle=<F3>
set ruler
set scrolloff=3
set shiftwidth=4
set shortmess=atI
set showcmd
set smartindent
set nostartofline
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabstop=4
set title
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/research/writings/phd_thesis/latex
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 01-intro.tex
badd +1 0d-defpart1.tex
badd +1 0d-defpart2.tex
badd +1 0d-globaldef.tex
badd +1 0f-abs.tex
badd +1 0f-ack.tex
badd +1 11-eval.tex
badd +1 12-reg.tex
badd +1 21-act.tex
badd +1 22-body.tex
badd +1 23-hand.tex
badd +0 31-discussion.tex
badd +0 a1-app.tex
badd +1 thesis.tex
badd +0 references.bib
args 01-intro.tex 0d-defpart1.tex 0d-defpart2.tex 0d-globaldef.tex 0f-abs.tex 0f-ack.tex 11-eval.tex 12-reg.tex 21-act.tex 22-body.tex 23-hand.tex 31-discussion.tex a1-app.tex thesis.tex
edit 01-intro.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=4
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
42,53fold
54,59fold
60,69fold
36,69fold
76,76fold
77,77fold
78,78fold
79,79fold
80,80fold
72,82fold
83,96fold
101,102fold
103,106fold
107,112fold
113,116fold
117,118fold
119,123fold
124,126fold
127,132fold
133,137fold
138,138fold
97,138fold
70,138fold
1,138fold
1
normal! zo
let s:l = 33 - ((17 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 042|
tabedit 11-eval.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
7argu
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
6,48fold
4,87fold
111,121fold
122,134fold
135,143fold
91,143fold
149,173fold
174,182fold
144,182fold
88,182fold
191,200fold
205,208fold
201,210fold
214,228fold
214,228fold
234,237fold
211,241fold
245,255fold
257,260fold
262,265fold
242,268fold
269,274fold
282,291fold
293,296fold
275,318fold
319,324fold
183,324fold
337,340fold
344,347fold
361,364fold
335,367fold
370,373fold
368,380fold
387,390fold
381,393fold
325,393fold
402,418fold
399,451fold
465,479fold
483,512fold
452,513fold
519,543fold
516,551fold
561,578fold
552,579fold
580,588fold
601,618fold
589,619fold
625,661fold
620,663fold
672,678fold
664,679fold
514,679fold
692,706fold
686,707fold
710,746fold
758,781fold
708,782fold
680,782fold
792,809fold
783,814fold
819,821fold
822,824fold
825,833fold
815,833fold
394,833fold
834,851fold
1,851fold
1
normal! zo
4
normal! zo
4
normal! zc
88
normal! zo
91
normal! zo
91
normal! zc
144
normal! zo
144
normal! zc
88
normal! zc
183
normal! zo
201
normal! zo
201
normal! zc
211
normal! zo
214
normal! zo
214
normal! zc
211
normal! zc
242
normal! zo
242
normal! zc
275
normal! zo
275
normal! zc
183
normal! zc
325
normal! zo
335
normal! zo
335
normal! zc
368
normal! zo
368
normal! zc
381
normal! zo
381
normal! zc
325
normal! zc
394
normal! zo
399
normal! zo
399
normal! zc
452
normal! zo
452
normal! zc
514
normal! zo
516
normal! zo
516
normal! zc
552
normal! zo
552
normal! zc
589
normal! zo
589
normal! zc
620
normal! zo
620
normal! zc
664
normal! zo
664
normal! zc
514
normal! zc
680
normal! zo
686
normal! zo
686
normal! zc
708
normal! zo
708
normal! zc
680
normal! zc
783
normal! zo
783
normal! zc
815
normal! zo
815
normal! zc
394
normal! zc
let s:l = 1 - ((0 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit 12-reg.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
8argu
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*^s*^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
16,45fold
61,121fold
4,121fold
129,148fold
161,166fold
161,166fold
150,179fold
180,182fold
187,190fold
192,199fold
201,205fold
207,211fold
183,213fold
122,213fold
216,226fold
216,226fold
229,235fold
246,258fold
246,258fold
265,271fold
272,284fold
272,284fold
288,292fold
288,292fold
241,293fold
214,293fold
298,301fold
303,307fold
294,312fold
318,320fold
322,325fold
352,354fold
355,358fold
351,359fold
360,363fold
366,369fold
371,377fold
371,377fold
364,379fold
382,387fold
380,401fold
404,408fold
402,410fold
411,413fold
414,425fold
349,425fold
313,425fold
442,450fold
451,462fold
433,462fold
481,503fold
511,526fold
465,527fold
535,538fold
528,541fold
463,541fold
576,605fold
544,627fold
633,657fold
659,683fold
686,691fold
701,717fold
720,745fold
748,767fold
628,768fold
542,768fold
426,768fold
769,787fold
1,787fold
1,787fold
1
normal! zo
1
normal! zo
4
normal! zo
4
normal! zc
122
normal! zo
150
normal! zo
161
normal! zo
161
normal! zc
150
normal! zc
183
normal! zo
183
normal! zc
122
normal! zc
214
normal! zo
216
normal! zo
216
normal! zc
241
normal! zo
246
normal! zo
246
normal! zc
272
normal! zo
272
normal! zc
288
normal! zo
288
normal! zc
241
normal! zc
214
normal! zc
294
normal! zo
294
normal! zc
313
normal! zo
349
normal! zo
351
normal! zo
351
normal! zc
364
normal! zo
371
normal! zo
371
normal! zc
364
normal! zc
380
normal! zo
380
normal! zc
402
normal! zo
402
normal! zc
349
normal! zc
313
normal! zc
426
normal! zo
433
normal! zo
433
normal! zc
463
normal! zo
465
normal! zo
465
normal! zc
528
normal! zo
528
normal! zc
463
normal! zc
542
normal! zo
544
normal! zo
544
normal! zc
628
normal! zo
628
normal! zc
542
normal! zc
426
normal! zc
let s:l = 2 - ((1 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
tabedit 21-act.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
9argu
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*^s*^s*^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
15,18fold
19,26fold
27,33fold
40,46fold
47,57fold
58,65fold
66,78fold
34,78fold
4,78fold
79,143fold
158,163fold
144,164fold
204,209fold
165,213fold
224,230fold
224,230fold
268,277fold
268,277fold
289,294fold
296,310fold
214,311fold
325,330fold
338,340fold
345,356fold
332,361fold
371,371fold
372,372fold
373,373fold
384,393fold
362,394fold
400,403fold
405,408fold
395,409fold
312,409fold
419,422fold
414,424fold
427,430fold
432,439fold
432,439fold
425,440fold
410,440fold
447,452fold
481,481fold
482,482fold
487,518fold
529,536fold
547,550fold
558,575fold
465,577fold
592,610fold
578,611fold
441,611fold
612,623fold
1,623fold
1
normal! zo
4
normal! zo
34
normal! zo
34
normal! zc
4
normal! zc
144
normal! zo
144
normal! zc
165
normal! zo
165
normal! zc
214
normal! zo
224
normal! zo
224
normal! zc
268
normal! zo
268
normal! zc
214
normal! zc
312
normal! zo
332
normal! zo
332
normal! zc
362
normal! zo
362
normal! zc
395
normal! zo
395
normal! zc
312
normal! zc
410
normal! zo
414
normal! zo
414
normal! zc
425
normal! zo
432
normal! zo
432
normal! zc
425
normal! zc
410
normal! zc
441
normal! zo
465
normal! zo
465
normal! zc
578
normal! zo
578
normal! zc
441
normal! zc
let s:l = 1 - ((0 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit 22-body.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
10argu
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*^s*^s*^s*^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
7,12fold
14,19fold
46,58fold
59,71fold
72,88fold
38,88fold
4,88fold
92,107fold
108,136fold
137,147fold
148,165fold
166,187fold
89,187fold
191,196fold
198,203fold
188,210fold
221,227fold
221,227fold
234,239fold
234,239fold
245,247fold
211,248fold
260,269fold
260,269fold
285,288fold
290,300fold
290,300fold
302,306fold
311,313fold
322,325fold
328,331fold
334,340fold
334,340fold
342,346fold
252,350fold
362,366fold
351,371fold
249,371fold
378,381fold
384,388fold
384,388fold
375,389fold
395,400fold
395,400fold
393,402fold
409,419fold
421,426fold
451,455fold
403,458fold
390,458fold
463,473fold
475,481fold
459,482fold
486,496fold
486,496fold
510,527fold
483,529fold
372,529fold
534,546fold
549,555fold
547,557fold
564,574fold
588,593fold
598,603fold
611,619fold
620,628fold
558,628fold
530,628fold
629,640fold
1,640fold
1
normal! zo
4
normal! zo
38
normal! zo
38
normal! zc
4
normal! zc
89
normal! zo
89
normal! zc
188
normal! zo
188
normal! zc
211
normal! zo
221
normal! zo
221
normal! zc
234
normal! zo
234
normal! zc
211
normal! zc
249
normal! zo
252
normal! zo
260
normal! zo
260
normal! zc
290
normal! zo
290
normal! zc
334
normal! zo
334
normal! zc
252
normal! zc
351
normal! zo
351
normal! zc
249
normal! zc
372
normal! zo
375
normal! zo
384
normal! zo
384
normal! zc
375
normal! zc
390
normal! zo
393
normal! zo
395
normal! zo
395
normal! zc
393
normal! zc
403
normal! zo
403
normal! zc
390
normal! zc
459
normal! zo
459
normal! zc
483
normal! zo
486
normal! zo
486
normal! zc
483
normal! zc
372
normal! zc
530
normal! zo
547
normal! zo
547
normal! zc
558
normal! zo
558
normal! zc
530
normal! zc
let s:l = 1 - ((0 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit 23-hand.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit 23-hand.tex
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
16,32fold
38,41fold
42,49fold
50,56fold
90,91fold
92,94fold
95,96fold
85,98fold
4,98fold
111,113fold
114,128fold
129,141fold
102,141fold
142,153fold
154,159fold
160,162fold
99,162fold
166,170fold
163,178fold
186,192fold
186,192fold
206,213fold
182,216fold
221,227fold
232,237fold
244,254fold
244,254fold
241,257fold
260,270fold
260,270fold
258,273fold
277,286fold
277,286fold
274,289fold
293,298fold
290,301fold
304,311fold
302,314fold
319,328fold
331,345fold
315,369fold
217,369fold
380,383fold
385,390fold
385,390fold
370,407fold
179,407fold
418,420fold
423,428fold
434,442fold
411,444fold
452,457fold
459,463fold
445,490fold
408,490fold
502,507fold
494,522fold
525,530fold
523,545fold
564,586fold
555,588fold
589,615fold
546,615fold
491,615fold
616,628fold
1,628fold
1
normal! zo
4
normal! zo
85
normal! zo
85
normal! zc
4
normal! zc
99
normal! zo
102
normal! zo
102
normal! zc
99
normal! zc
163
normal! zo
163
normal! zc
179
normal! zo
182
normal! zo
186
normal! zo
186
normal! zc
182
normal! zc
217
normal! zo
241
normal! zo
244
normal! zo
244
normal! zc
241
normal! zc
258
normal! zo
260
normal! zo
260
normal! zc
258
normal! zc
274
normal! zo
277
normal! zo
277
normal! zc
274
normal! zc
290
normal! zo
290
normal! zc
302
normal! zo
302
normal! zc
315
normal! zo
315
normal! zc
217
normal! zc
370
normal! zo
385
normal! zo
385
normal! zc
370
normal! zc
179
normal! zc
408
normal! zo
411
normal! zo
411
normal! zc
445
normal! zo
445
normal! zc
408
normal! zc
491
normal! zo
494
normal! zo
494
normal! zc
523
normal! zo
523
normal! zc
546
normal! zo
555
normal! zo
555
normal! zc
546
normal! zc
491
normal! zc
let s:l = 1 - ((0 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit thesis.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit thesis.tex
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
1,20fold
44,49fold
50,59fold
1
normal! zo
let s:l = 56 - ((55 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 0
tabedit references.bib
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit references.bib
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'bib'
setlocal filetype=bib
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'bib'
setlocal syntax=bib
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1008 - ((26 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1008
normal! 03|
tabedit 0d-defpart1.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit 0d-defpart1.tex
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*\\bibitem,=\\item,},],=^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
tabedit 0d-defpart2.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit 0d-defpart2.tex
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*^s*\\bibitem,=\\item,},],=^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 32 - ((25 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 026|
tabedit 0d-globaldef.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit 0d-globaldef.tex
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=/usr/share/vim/vimfiles/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*^s*^s*\\bibitem,=\\item,},],=^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=pdflatex\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 24 - ((23 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=atI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
