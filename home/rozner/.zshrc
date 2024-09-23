# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rozner/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias ll="ls -al"
nixconffile="/etc/nixos/configuration.nix"
alias nixre="sudo nixfmt $nixconffile & sudo nixos-rebuild switch"
alias nixconf="code $nixconffile"
eval "$(starship init zsh)"