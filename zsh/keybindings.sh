#prev 
	bindkey "^j" up-line-or-beginning-search 

#next
	bindkey "^k" down-line-or-beginning-search 

# git
	function git_prepare() {
		if [ -n "$BUFFER" ];
			then
				BUFFER="git commit -m \"$BUFFER\""
		fi

		if [ -z "$BUFFER" ];
			then
				BUFFER="git commit -v"
		fi
				
		zle accept-line
	}
	zle -N git_prepare
	bindkey "^g" git_prepare

	function git_status() { 
		BUFFER="git status"
		zle end-of-line
		zle accept-line
	}
	zle -N git_status
	bindkey "^n" git_status

# clear and list the directory
	function clearScreen() { 
		BUFFER="clear ; ls"
		zle end-of-line
		zle accept-line
	}
	zle -N clearScreen
	bindkey "^w" clearScreen

# home
	function goto_home() { 
		BUFFER="cd ~/"$BUFFER
		zle end-of-line
		zle accept-line
	}
	zle -N goto_home
	bindkey "^h" goto_home

# Edit and rerun
	function edit_and_run() {
		BUFFER="fc"
		zle accept-line
	}
	zle -N edit_and_run
	bindkey "^v" edit_and_run

# LS
	function ctrl_l() {
		BUFFER="ls"
		zle accept-line
	}
	zle -N ctrl_l
	bindkey "^l" ctrl_l

# Enter
	function enter_line() {
		zle accept-line
	}
	zle -N enter_line
	bindkey "^o" enter_line

# Sudo
	function add_sudo() {
		BUFFER="sudo "$BUFFER
		zle end-of-line
	}
	zle -N add_sudo
	bindkey "^s" add_sudo

# Clear
	function do_clear() {
		BUFFER= "clear"
		zle accept-line
	}
	zle -N do_clear
	bindkey "^q" do_clear
