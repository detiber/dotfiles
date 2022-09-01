DOTFILES_ROOT="${HOME}/src/dotfiles"
IS_ZSH='false'
IS_BASH='true'

function src() {
  local file
  local platform=$(echo $(uname -s) | tr '[:upper:]' '[:lower:]')

  if [[ "$1" ]]; then
    source "${DOTFILES_ROOT}/source/$1.sh"
  else
    for file in "${DOTFILES_ROOT}/source/"*; do
      source "$file"
    done
    if [[ -d "$DOTFILES_ROOT/$platform/source" ]]; then
      for file in "${DOTFILES_ROOT}/$platform/source/"/*; do
        source "$file"
      done
    fi
  fi
}

src

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/jdetiber/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)