set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'

" Plugin for syntax for typescript
Plugin 'leafgarland/typescript-vim.git'

" Fuzzy finder useful for getting them files
Plugin 'junegunn/fzf.vim.git'

" Basically what it says
Plugin 'terryma/vim-mutiple-cursors.git'

" A tree view of files and things super cools
Plugin 'scrooloose/nerdtree.git'
map <C-o> :NERDTreeToggle<cr>

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
