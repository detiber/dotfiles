autoload -Uz compinit
compinit

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

type gh &>/dev/null && source <(gh completion --shell zsh)

for cmd in kubectl golangci-lint limactl colima ctlptl tilt kind; do
  type ${cmd} &>/dev/null && source <(${cmd} completion zsh)
done
