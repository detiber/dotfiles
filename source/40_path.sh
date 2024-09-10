# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# PIP --user bin directory
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/go/bin" ]; then
    PATH="$HOME/go/bin:$PATH"
fi

if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then
    . "$HOME/google-cloud-sdk/path.bash.inc"
fi

if [ -d "$HOME/.krew/bin" ]; then
    PATH="$HOME/.krew/bin:$PATH"
fi

if [ -d "$HOME/.jenv/bin" ]; then
    PATH="$HOME/.jenv/bin:$PATH"
fi

if [ -d "${HOME}/.local/bin" ]; then
    PATH="$PATH:${HOME}/.local/bin"
fi
