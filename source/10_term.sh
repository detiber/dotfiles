if [[ "${COLORTERM-}" = "gnome-terminal" ]] || [[ "${COLORTERM-}" = "xfce4-terminal" ]] || [[ "${COLORTERM-}" = "truecolor" ]]; then
    TERM=xterm-256color
elif [[ "${COLORTERM-}" = "rxvt-xpm" ]]; then
    TERM=rxvt-256color
fi
export TERM
