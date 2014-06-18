bindkey -v
autoload -U compinit; compinit
alias ...='cd ../..'
alias ....='cd ../../../'
zstyle ':completion:*:default' menu select=1

HISTSIZE=1000
SAVEHIST=1000
HISFILE=$HOME/.zhistory

setopt ALWAYS_TO_END
setopt AUTO_CD
setopt AUTO_LIST

PROMPT='%F{green}%B[%n@%m:%f%F{blue}%~%f%F{green}]%#%b%f
'
