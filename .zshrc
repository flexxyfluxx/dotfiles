
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-/]=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle :compinstall filename '/home/pleb/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install

autoload -U colors && colors

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '%F{white} on %F{red}'$branch''
  fi
}
setopt prompt_subst

prompt='%B%F{green}%n%F{blue}@%m%k %B%F{cyan}%~$(git_branch_name)%F{white}'$'\n'' ╙─%\$$ %b%f%k'

export GIT=/mnt/sharedssd/GIT
export USB=/mnt/usb
export WIN=/mnt/winssd
export SHSSD=/mnt/sharedssd
export SHHDD=/mnt/sharedhdd

alias ls='ls --color=auto -F'
alias ll='ls --color=auto -lha'
alias la='ls --color=auto -a'
alias lt='ls --color=auto --human-readable --size -1 -S --classify'
alias cd.='cd ..'

