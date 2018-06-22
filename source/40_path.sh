# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$GOPATH/bin" ]; then
    PATH="$GOPATH/bin:$PATH"
fi

if [ -d "$HOME/kubebuilder/bin" ]; then
    PATH="$HOME/kubebuilder/bin:$PATH"
fi

if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then
    . "$HOME/google-cloud-sdk/path.bash.inc"
fi
