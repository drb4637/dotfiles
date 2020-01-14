" General Vim settings
	syntax on
	"let mapleader = "-"	
	let mapleader = " " 	
    let maplocalleader = "-"

	set autoindent
	set dir=/tmp/
	set relativenumber 
	set number

	"Tab things
	set tabstop=4
	set shiftwidth=4
	set expandtab 

	imap nj <C-n>

	"set cursorline
	hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

	set hlsearch
	nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
	nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>
	nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>

	nnoremap n nzzzv
	nnoremap N Nzzzv

	nnoremap H 0
	nnoremap L $
	nnoremap J G
	nnoremap K gg

"	nnoremap nn <C-n> 
"	vnoremap nn <C-n> 
"	inoremap nn <C-n> 

	map <tab> %

	set backspace=indent,eol,start

"	nnoremap <Space> za
	nnoremap <leader>z zMzvzz

	nnoremap vv 0v$

	set listchars=tab:\|\ 
	nnoremap <leader><tab> :set list!<cr>
	set pastetoggle=<F2>
	set mouse=a
	set incsearch

" Language Specific
	" Tabs
		so ~/dotfiles/vim/tabs.vim
       
" General
	nnoremap <localleader>for <esc>Ifor (int i = 0; i < <esc>A; i++) {<enter>}<esc>O<tab>
	nnoremap <leader>if <esc>Iif (<esc>A) {<enter>}<esc>O<tab>
     
" Python 
	autocmd Filetype python nmap <leader>for <esc>Ifor i in range(<esc>A):<enter><tab>
	autocmd Filetype python nmap <leader>if <esc>Iif <esc>A:<enter><tab>
	autocmd Filetype python nmap <leader>while <esc>Iwhile <esc>A:<enter><tab>
	autocmd Filetype python nmap <leader>sub <esc>Isubprocess.check_output(<esc>A, shell=True)

" JavaScript
	"autocmd Filetype javascript imap <leader>forin <esc>Ifor (i in <esc>A){<enter>}<tab>

" Java
	"inoremap <leader>sys <esc>ISystem.out.println(<esc>A);
	"vnoremap <leader>sys yOSystem.out.println(<esc>pA);

" Java
	"inoremap <leader>con <esc>Iconsole.log(<esc>A);
	"vnoremap <leader>con yOconsole.log(<esc>pA);

" C++
	"inoremap <leader>cout <esc>Istd::cout << <esc>A << std::endl;
	"vnoremap <leader>cout yOstd::cout << <esc>pA << std:endl;

" C
	"inoremap <leader>out <esc>Iprintf(<esc>A);<esc>2hi
	"vnoremap <leader>out yOprintf(, <esc>pA);<esc>h%a
    
" Typescript
	"autocmd BufNewFile,BufRead *.ts set syntax=javascript
	"autocmd BufNewFile,BufRead *.tsx set syntax=javascript

" Markup
	"inoremap <leader>< <esc>I<<esc>A><esc>yypa/<esc>O<tab>

" File and Window Management 
	"inoremap <leader>w <Esc>:w<CR>
	nnoremap <leader>w :w<CR>

	"inoremap <leader>q <ESC>:q<CR>
	nnoremap <leader>q :q<CR>

	"inoremap <leader>x <ESC>:x<CR>
	nnoremap <leader>x :x<CR>

	"remap panel navigation
	nnoremap <leader>h <c-w>h
	nnoremap <leader>j <c-w>j
	nnoremap <leader>k <c-w>k
	nnoremap <leader>l <c-w>l

	nnoremap <leader>e :Ex<CR>
	nnoremap <leader>t :tabnew<CR>:Ex<CR>
	nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
	nnoremap <leader>f :split<CR>:w<CR>:Ex<CR>

" Return to the same line you left off at
	augroup line_return
		au!
		au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\	execute 'normal! g`"zvzz' |
			\ endif
	augroup END

" Future stuff
	"Swap line
	"Insert blank below and above

