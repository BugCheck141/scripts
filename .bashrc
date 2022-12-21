# prompt tmux default session
if [[ $- =~ i ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_TTY" ]]; then
  read -r -p "Enter default tmux session? [Y/n] " tmuxResponse
  tmuxResponse=${tmuxResponse,,}    # tolower
  if [[ "$tmuxResponse" =~ ^(yes|y|)$ ]]; then
    tmux new-session -A -s ${USER}ssh_tmux
  fi
fi
