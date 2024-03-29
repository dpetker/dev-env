" Enable modern Vim features not compatible with Vi spec.
set nocompatible

"======================"
" Vundle configuration "
"======================"

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
if isdirectory(expand('$HOME/.vim/bundle/Vundle.vim'))
  call vundle#begin()
  " Required
  Plugin 'VundleVim/Vundle.vim'

  " Install plugins that come from github. Once Vundle is installed, these can be
  " installed with :PluginInstall
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/nerdtree'
  Plugin 'chriskempson/base16-vim'
  Plugin 'mhinz/vim-signify'
  Plugin 'mhinz/vim-startify'
  Plugin 'dracula/vim'

  call vundle#end()
else
  echomsg 'Vundle is not installed. You can install Vundle from'
      \ 'https://github.com/VundleVim/Vundle.vim'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @dpetker-specific options, etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Originally from https://vi.stackexchange.com/questions/10708/no-syntax-highlighting-in-tmux
" Seems to better handle syntax highlighting in vim in tmux
if $TERM =~# '256color' && ( $TERM =~# '^screen'  || $TERM =~# '^tmux' )                                                                                                            
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"                                                                                                                                            
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"                                                                                                                                            
  set termguicolors                                                                                                                                                                 
endif                                                                                                                                                                               
                                                                                                                                                                                    
colorscheme dracula

" if !exists('g:colors_name') || g:colors_name != 'dracula'
"   set termguicolors
"   let base16colorspace=256
"   colorscheme dracula
" endif

set number

" use » to mark Tabs and ° to mark trailing whitespace
set list listchars=tab:»\ ,trail:°

" Highlight the search term when you search for it.
set hlsearch
" Clear highlights on double-mash of <esc>
nnoremap <esc><esc> :noh<return>
" Use jk as an alias for <esc>
inoremap jk <esc>

" Incremental search, ignore case
set ignorecase
set incsearch

" Always show the tab bar
set showtabline=2

" Enable mouse mode
set mouse=a

" Other random settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set ruler
set cursorline
set autoread " If vim detects a file has changed on disk, reload it

" Map F6 to toggle NERDTree
nmap <F6> :NERDTreeToggle<CR>

" More natural split pane placement
set splitbelow
set splitright

" GVim-specific settings
if has('gui_running')
  set lines=50 columns=140
  " Disabling this for now, since GVim and terminal don't really support
  " ligatures :(
  " set guifont=Fira\ Code\ 10
  set guifont=Source\ Code\ Pro\ 11
endif

" Allow \cd to :cd into this file's current directory
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" end of @dpetker-specific options, etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" THESE MUST BE THE LAST TWO LINES IN THE FILE OR BAD THINGS HAPPEN!
filetype plugin indent on
syntax on
