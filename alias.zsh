# Common Apps
alias vi="nvim"
alias vim="nvim"
alias c="clear"
alias zed="zeditor"
alias mkdir="mkdir -p"
alias compass='mongodb-compass --ignore-additional-command-line-flags --password-store="gnome-libsecret" &'

# Directory navigation shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias cshp='cd /mnt/shared/projects'

# pnpm
alias pn="pnpm"
alias pnx="pnpm exec"
alias pnlx="pnpm dlx"
alias pni="pnpm install"
alias pna="pnpm add"
alias pnup="pnpm up"
alias pnupl="pnpm up --latest"

# eza
alias ls="eza -Ga"
alias ll="eza -la"
alias lt="eza -lTa --git-ignore"

# aur helper
alias pk="paru"
alias pkr="paru -Rcns"
alias pki="paru -Syy --needed"
alias pku="paru -Syyu"
alias pklaur="paru -Qm"
alias pkl="paru -Qe"
alias pkc="paru -Sccc"

# git
alias gi="git init"
alias gac="git add . && git commit -m"
alias gps="git push"
alias gpl="git pull"
alias gst="git stash --include-untracked"
