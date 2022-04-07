""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""d
" Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'webplantmedia/vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tobyS/pdv'
Plug 'webplantmedia/transmit-ftp'
Plug 'SirVer/ultisnips'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'tpope/vim-markdown'
Plug 'nelstrom/vim-visual-star-search'
Plug 'tobyS/vmustache'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'editorconfig/editorconfig-vim'

" Initialize plugin system
call plug#end()

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


" let g:ale_fixers = {
 " \ 'javascript': ['eslint'],
 " \ 'json': ['eslint'],
 " \ 'scss': ['stylelint'],
 " \ 'php': ['phpcbf'],
 " \ 'css': ['stylelint']
 " \ }
 
" let g:ale_fix_on_save = 1
" let g:ale_javascript_prettier_use_local_config = 1

" :W sudo saves the file 
" (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null

" get out of horrible vi-compatible mode
set nocompatible

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let g:coc_global_extensions = [
	  \ 'coc-tsserver',
	  \'coc-python',
	  \'coc-php-cs-fixer',
	  \'coc-json',
	  \'coc-html',
	  \'coc-css',
	  \'coc-xml',
	  \'coc-phpls',
	  \'coc-prettier',
	  \'coc-diagnostic'
  \ ]

" \'coc-tslint',

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
		\ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
		\ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

command! -nargs=0 Prettier :CocCommand prettier.formatFile

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

" Preserve column cursor position when switching buffers
set nostartofline

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

set guifont=Courier\ New:h17
set background=dark

colorscheme codedark


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
nnoremap <leader>t2 :set tabstop=2 shiftwidth=2 softtabstop=2<CR>:set noexpandtab<CR>:%retab!<CR>
nnoremap <leader>t4 :set tabstop=4 shiftwidth=4 softtabstop=4<CR>:set noexpandtab<CR>:%retab!<CR>
nnoremap <leader>xt :set expandtab<CR>:%retab!<CR>
nnoremap <leader>rt :set noexpandtab<CR>:%retab!<CR>

autocmd FileType javascript :set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType scss :set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType css :set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType php :set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType html :set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab

" In Brief Mode script will not indent more than one shiftwidth each line.
" https://github.com/vim-scripts/Simple-Javascript-Indenter
let g:SimpleJsIndenter_BriefMode = 1

" To indent 'case:' and 'default:' statements in switch() blocks:
" http://www.2072productions.com/to/phpindent.txt
let g:PHP_vintage_case_default_indent = 1

" indent doesn't work well with unix fileformat
let g:PHP_removeCRwhenUnix = 1

nmap <leader>fp :set filetype=php<cr>
nmap <leader>fh :set filetype=html<cr>:set syntax=php<cr>
nmap <leader>fc :set filetype=css<cr>:set syntax=php<cr>

" mappings for Tabularize
" vimcasts.org/episodes/aligning-text-with-tabular-vim/
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a> :Tabularize /=><CR>
vmap <leader>a> :Tabularize /=><CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>

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

" Close the current buffer
" map <leader>l :ls<cr>

" Close all the buffers
map <leader>da :bufdo bd<cr>
map <leader>dq :bufdo bd!<cr>:q<cr>
map <leader>dd :bd<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>tq :tabclose<cr>
map [t :tabprevious<cr>
map ]t :tabnext<cr>
" map <leader>to :tabonly<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
" map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

map <leader>6 :b #<cr>

map [q :cnext<cr>
map ]q :cprev<cr>
map [Q :clast<cr>
map ]Q :cfirst<cr>

" http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
" autocmd User fugitive
  " \ if get(b:, 'fugitive_type', '') =~# '^\%(tree\|blob\)$' |
  " \   nnoremap <buffer> .. :edit %:h<CR> |
  " \ endif

" http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
" autocmd BufReadPost fugitive://* set bufhidden=delete

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
" set statusline+=%{fugitive#statusline()}
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim

set wildignore+=*/node_modules/*,*/vendor/*,*.map,*.swp,*.zip
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|vendor/'
let g:ctrlp_working_path_mode = 'a'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal - open terminal
nnoremap <leader>O :call OpenTerminal()<CR>

" tags - generate tags
nnoremap <leader>gt :call GenerateTags()<CR>

" patch - generate patch
" nnoremap <leader>gp :call GeneratePatch()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F-Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ic :set ignorecase!<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>E :Explore<CR>
nnoremap <leader>ww :set wrap!<CR>:set lbr<CR>
nnoremap <leader>hs :set hlsearch! hlsearch?<CR>
nnoremap <leader>hl :set cursorline! cursorline?<CR>
nnoremap <leader>sl :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=2
let NERDTreeWinSize=40
let NERDTreeBookmarksSort=0

"let NERDTreeShowHidden=1
"let NERDTreeMouseMode = 1

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_keepdir  = 0
let g:netrw_browse_split = 0
let g:netrw_dirhistmax = 1
" let g:netrw_altv = 1
" let g:netrw_winsize = 25


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
nnoremap <Leader>aa :Ack! 
nnoremap <Leader>ao :Ack! -i --type=
nnoremap <Leader>aj :Ack! --type=js 
nnoremap <Leader>ap :Ack! --type=php 
nnoremap <Leader>as :Ack! --type=sass 
nnoremap <Leader>ac :Ack! --type=css 

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

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Get VIM to copy to system clipboard?
set clipboard+=unnamed  " use the clipboards of vim and win

" Run prettier on autosave
" let g:prettier#autoformat = 0
" noremap <Leader>pa :autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set omnifunc=syntaxcomplete#Complete

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! FetchSitePath()
	let fullpath = getcwd()

	return fullpath
endfunction

function! GenerateTags()
	let sitepath = FetchSitePath()
	let sitepath = substitute( sitepath, "wp-content.*$", "", "" )
	silent exe "!~/.vim/scripts/ctags.sh ".sitepath
	redraw!
	echo "Generated tags for ".sitepath
endfunction

function! GeneratePatch()
	let sitepath = FetchSitePath()
	silent exe "!~/.vim/scripts/patch.sh ".sitepath
	redraw!
	echo "Generated patch for ".sitepath
endfunction

function! OpenTerminal()
	let sitepath = FetchSitePath()
	silent exe "!open -a Terminal ".sitepath
	redraw!
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
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
