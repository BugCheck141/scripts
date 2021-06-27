# prompt tmux default session
if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
  read -p "attach default tmux session? [y]es/no: " yn
  if [[ ${#yn} -eq 0 || $yn = [Yy]* ]];then
    tmux new-session -A -s main
  fi
fi
