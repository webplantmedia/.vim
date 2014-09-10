"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype on
filetype plugin indent on

" let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
" nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null

" get out of horrible vi-compatible mode
set nocompatible


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
" set so=7

" Turn on the WiLd menu
set wildmenu

" Always show current position
set ruler

" time out after pressing esc
set ttimeoutlen=0

" Set Line Numbers
set nu

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
" set magic

" Turn on cursor line
" set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=./tags;


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use tabs instead of spaces
set noexpandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
set lbr
set tw=500
set showbreak=----->


set smartindent
set autoindent
set cindent
set wrap "Wrap lines

" convenient way to convert spaces to tab
nnoremap <leader>2 :set tabstop=2 shiftwidth=2 softtabstop=2<CR>:set noexpandtab<CR>:%retab!<CR>
nnoremap <leader>4 :set tabstop=4 shiftwidth=4 softtabstop=4<CR>:set noexpandtab<CR>:%retab!<CR>

" In Brief Mode script will not indent more than one shiftwidth each line.
" https://github.com/vim-scripts/Simple-Javascript-Indenter
let g:SimpleJsIndenter_BriefMode = 1

" To indent 'case:' and 'default:' statements in switch() blocks:
" http://www.2072productions.com/to/phpindent.txt
let g:PHP_vintage_case_default_indent = 1

" indent doesn't work well with unix fileformat
let g:PHP_removeCRwhenUnix = 1

nmap <leader>fp :set filetype=php<cr>
nmap <leader>fh :set filetype=html<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
" map j gj
" map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" map <space> /
" map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" Close the current buffer
" map <leader>bd :bd<cr>

" Close the current buffer
" map <leader>l :ls<cr>

" Close all the buffers
" map <leader>da :bufdo bd<cr>

" Useful mappings for managing tabs
" map <leader>tn :tabnew<cr>
" map <leader>to :tabonly<cr>
" map <leader>tc :tabclose<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
" map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

map <leader>6 :b #<cr>

""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%{HasPaste()} " is paste mode on?
set statusline+=%-3.3n "buffer number
set statusline+=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal - open terminal
nnoremap <leader>O :call OpenTerminal()<CR>

" tags - generate tags
nnoremap <leader>gt :call GenerateTags()<CR>

" mamp - clean dir for mamp
nnoremap <leader>m :call CleanForMamp()<CR>

" convert convert to (h)html
nnoremap <leader>h :call ConvertPHPToHTML()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F-Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <F8> :set wrap!<CR>:set lbr<CR>
nnoremap <F9> :set hlsearch! hlsearch?<CR>
nnoremap <F10> :set cursorline! cursorline?<CR>
nnoremap <F11> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=2
let NERDTreeWinSize=50
"let NERDTreeShowHidden=1
"let NERDTreeWinSize = 40
"let NERDTreeMouseMode = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDCommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDSpaceDelims=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHPDoc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pdv_template_dir = $HOME ."/.vim/templates_snip"
nmap <leader>cf :call pdv#DocumentWithSnip()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Transmit FTP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>u :call TransmitFtpSendFile()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>rm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Search in Codex for WordPress
nnoremap <leader>co :Wcodexsearch<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set omnifunc=syntaxcomplete#Complete

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ConvertPHPToHTML()
	" e flag supresses warning
	exe ":.s/echo\\s\\+\\'//ge"
	exe ":.s/\\'\\;//ge"
	exe ":.s/\\'\\./<?php echo /ge"
	exe ":.s/\\.\\'/; ?>/ge"
	exe ":.s/\\(^\\s*\\)\\(\\$[A-Za-z_]*.*$\\)/\\1<?php \\2 ?>/ge"
	exe ":.s/\\(^\\s*\\)\\(\\/\\/.*$\\)/\\1<?php \\2 ?>/ge"
	exe ":.s/echo selected(\\([A-Za-z0-9\\[\\]_\\' \\$]*\\),\\s*\\([A-Za-z0-9\\[\\]_\\' \\$]*\\),\\s*false\\s*)/selected(\\1, \\2)/ge"

	exe ":.s/\\(^\\s*\\)foreach\\(.*\\){\\s*$/\\1<?php foreach\\2: ?>/ge"
	exe ":.s/\\(^\\s*\\)if\\(.*$\\)/\\1<?php if\\2 : ?>/ge"
endfunction

function! FetchSitePath()
	let fullpath = expand('%:p')
	let nameoffile = @%
	let sitepath = substitute(fullpath, nameoffile, "", "")

	return sitepath
endfunction

function! GenerateTags()
	let sitepath = FetchSitePath()
	exe "! ~/.vim/scripts/ctags.sh ".sitepath
endfunction

function! CleanForMamp()
	let sitepath = FetchSitePath()
	exe "! sudo ~/.vim/scripts/mamp.sh ".sitepath
endfunction

function! OpenTerminal()
	let sitepath = FetchSitePath()
	exe "silent ! open -a Terminal ".sitepath
endfunction

function! CmdLine(str)
	exe "menu Foo.Bar :" . a:str
	emenu Foo.Bar
	unmenu Foo
endfunction 

" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
	 buffer #
   else
	 bnext
   endif

   if bufnr("%") == l:currentBufNum
	 new
   endif

   if buflisted(l:currentBufNum)
	 execute("bdelete! ".l:currentBufNum)
   endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP Sytax Highlight for Comments
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
