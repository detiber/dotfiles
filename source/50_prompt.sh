function _update_ps1() {
  PS1="$(powerline-go -error $? -condensed -modules user,host,ssh,cwd,perms,aws,docker,kube,git,jobs,exit,root)"
}

function powerline_precmd() {
  PS1="$(powerline-go -error $? -condensed -modules user,host,ssh,cwd,perms,aws,docker,kube,git,jobs,exit,root)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if command -v powerline-go 2>&1 > /dev/null; then
  if [[ "$IS_ZSH" == 'true' ]]; then  
    install_powerline_precmd
  else
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
  fi
fi
