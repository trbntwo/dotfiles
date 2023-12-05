#!/usr/bin/bash

# prompt
PS1='[\[\e[38;5;92m\]\u@\h\[\e[0m\]:\[\e[38;5;208m\]\w\[\e[0m\]]\$ '

# firefox wayland
if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi