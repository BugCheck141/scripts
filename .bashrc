# prompt tmux default session
read -r -p "Enter default tmux session? [Y/n] " tmuxResponse
tmuxResponse=${tmuxResponse,,}    # tolower
if [[ "$tmuxResponse" =~ ^(yes|y|)$ ]]; then
	tmux new-session -A -s ${USER}ssh_tmux
fi
