"This should be added after either the windows or the linux header


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'

" EXAMPLES
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" Plugin for syntax for typescript
Plugin 'leafgarland/typescript-vim.git'

" Fuzzy finder useful for getting them files
Plugin 'junegunn/fzf.vim.git'

" A tree view of files and things super cools
Plugin 'scrooloose/nerdtree.git'
map <C-o> :NERDTreeToggle<cr>

" This is to become a HTML wizzzzzzard 
Plugin 'mattn/emmet-vim.git'

" Delinter... tells me when i am wong(or less right)
Plugin 'w0rp/ale.git'

" Plugin for commenting out lines 
Plugin 'tomtom/tcomment_vim.git'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Plugin for VHDL work 
Plugin 'suoto/vim-hdl'


" PLugin for you complete me,
" some notes for getting it to work with c, needs cmake with
" 'set(CMAKE_EXPORT_COMPILE_COMMANDS ON'
" to force complete press (Ctrl-space) 
Plugin 'ycm-core/YouCompleteMe.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
