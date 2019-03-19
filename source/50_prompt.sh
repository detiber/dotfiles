function _update_ps1() {
  PS1="$(powerline-go -error $? -condensed -modules user,host,ssh,cwd,perms,aws,docker,kube,git,jobs,exit,root)"
}

if command -v powerline-go 2>&1 > /dev/null; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
