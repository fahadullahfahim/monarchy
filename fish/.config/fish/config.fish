if status is-interactive
    starship init fish | source
    zoxide init fish | source
    alias ga='git add'
    alias gcm='git commit -m'
    alias gst='git status'
    alias gp='git push'
    alias ls='ls --color=auto'
    alias ll='ls -lh --color=auto'
    alias la='ls -A --color=auto'
    alias l='ls -CF --color=auto'
end
set -g fish_greeting ""
set -g fish_color_command brgreen
set -g fish_color_param cyan
set -g fish_color_autosuggestion 555
set -g fish_color_error brred