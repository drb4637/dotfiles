#!/bin/bash
# ssh-multi
# D.Kovalov
# a script to ssh multiple servers over multiple tmux panes

starttmux() {
	if [ -z "$HOSTS" ]; then
		echo -n "Please provide of list of hosts separated by spaces [ENTER]: "
		read HOSTS
	fi
	local hosts=( $HOSTS )

	echo -n "UserName:"
	read User 

	tmux new-window "ssh $User@${hosts[0]}"
	unset hosts[0];
	for i in "${hosts[@]}"; do
		tmux split-window -h  "ssh $User@$i"
		tmux select-layout tiled > /dev/null
	done
	tmux select-pane -t 0
	tmux set-window-option synchronize-panes on > /dev/null
}

HOSTS=${HOSTS:=$*}
starttmux
