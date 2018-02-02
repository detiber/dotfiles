# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -n "$GOPATH" ]; then
    PATH="$GOPATH/bin:$PATH"
fi
