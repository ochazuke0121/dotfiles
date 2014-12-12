
alias booking='/home/yokoyama/pub/powerctl/booking.py'

zmodload -i zsh/complist
autoload -Uz compinit && compinit
zstyle ':completion:*:default' menu select=2


alias ...='cd ../..'
alias ....='cd ../../../'
alias ll='ls -l'
alias tmux='env LD_LIBRARY_PATH=/home/t_hase/local/libevent/lib ~/local/tmux/bin/tmux'

zstyle ':completion:*:default' menu select=1

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.zhistory
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups


setopt ALWAYS_TO_END
setopt AUTO_CD
setopt AUTO_LIST

PROMPT="%F{green}%B[%n@%m:%f%F{cyan}%~%f%F{green}]%#%b%f"$'\n'"%F{cyan}>%f "

bindkey -e 
bindkey -e '^L' forward-char
bindkey -e '^K' up-line-or-history
bindkey -e '^J' down-line-or-history
bindkey -e '^Q' beginning-of-line
bindkey -e '^E' end-of-line
bindkey -e '^P' history-incremental-search-backward
bindkey -e '^N' history-incremental-search-forward
bindkey -e '^M' accept-line
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char



