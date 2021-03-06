" DroidVim default settings
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

scriptencoding utf-8

set fileformats=unix,dos,mac

set hidden
set nowritebackup
set nobackup

set virtualedit=block

set whichwrap=b,s,[,],<,>

set autoindent
set smartindent
set ignorecase
set smartcase
set formatoptions+=mMj

set noerrorbells
set novisualbell
set visualbell t_vb=
set number
set noshowcmd
set notitle
" We recommend to display tab and trailing whitespace.
" set list
" set listchars=tab:^\ ,trail:~
set omnifunc=syntaxcomplete#Complete

set mouse=a

" ================
" Appendix
" ================
" Help:
" Type `K` to see the help for the option under the cursor. (`:q` to close help)
"
" Text Input Mode:
" (Especially important for non-English languages.)
" If you want to use a language other than English in Insert mode, please refer to the "DroidVim help" -> "Text input mode".
"
" Colorscheme:
" You can use a 256 terminal color scheme (E.g. term256).
" :colorscheme term256

" INTERNAL_STORAGE:
" You can access internal storage with $INTERNAL_STORAGE.
" (e.g.) :cd $INTERNAL_STORAGE
" * If you are using Android 6 or later, restart this application after granting the storage access permission.
" * If you are using Android 10 or later, it is "Private Storage Area".
"
" Startup:
" When you start Vim, you may want to always edit the file in a specific directory.
" In that case, add the following to .vimrc
"   cd $INTERNAL_STORAGE/path/to/directory
"
" Vimfiles:
" Files in the home directory ($HOME) will be deleted during uninstallation.
" So we recommended that create `.vimrc` and `vimfiles (.vim)` in internal storage. (It can be accessed with filer app)
"
" If you created `.vimrc` or `vimfiles (.vim)` in internal storage, create a symbolic link with the following command via Vim
"  1. :cd $HOME
"  2. :!rm .vimrc
"     (Delete $HOME/.vimrc)
"  3. :!ln -s $INTERNAL_STORAGE/path/to/.vimrc .vimrc
"  4. :!rm -rf .vim
"     (Delete $HOME/.vim)
"  5. :!ln -s $INTERNAL_STORAGE/path/to/.vim .vim

set viminfo+=n$APPFILES/home/.viminfo

" custom settings

" Spaces & Tabs {{{
set tabstop=2           " 2 space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " 2 space tab
set shiftwidth=2
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}

" UI Layout {{{
set number
set relativenumber
set showcmd
set nocursorline
set wildmenu
set wildmode=list:longest,full
set wrap
set wildcharm=<TAB>
set lazyredraw
set showmatch
" source $VIMRUNTIME/menu.vim
" }}}
