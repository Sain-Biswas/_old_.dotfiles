# Common Apps
alias vi="nvim"
alias vim="nvim"
alias c="code"
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
# pnpm - install node packages from package.json
alias pni="pnpm install"
# pnpm - execute node executables
alias pnx="pnpm exec"
alias pnlx="pnpm dlx"
# pnpm - adding node packages
alias pna="pnpm add"
alias pnad="pnpm add -D"
alias pnag="pnpm add -g"
alias pnao="pnpm add -O"
# pnpm - updating node packages
alias pnup="pnpm up"
alias pnupl="pnpm up --latest"
# pnpm - remove node packages
alias pnr="pnpm remove"
# pnpm - pnpm create
alias pnc="pnpm create"


# eza
alias ls="eza -Ga"
alias ll="eza -la"
alias lt="eza -lTa --git-ignore"


# aur helper
alias pkg="paru"
alias pkgclean="paru -Sc"
alias pkgclr="paru -Scc"
alias pkgu="paru -Syyu"
alias pkgi="paru -Syy --needed"
alias pkgr="paru -Rcns"
alias pkgl="paru -Qe"
alias pkgla="paru -Qm"
alias pkglo="paru -Qtd"


# git
alias gi="git init"
alias gac="git add . && git commit -m"
alias gpush="git push"
alias gpull="git pull"
alias gstash="git stash --include-untracked"
