bindkey -e
autoload -U compinit; compinit
alias ...='cd ../..'
alias ....='cd ../../../'
alias gs='git status'
zstyle ':completion:*:default' menu select=1

HISTSIZE=1000
SAVEHIST=1000
HISFILE=$HOME/.zhistory

setopt ALWAYS_TO_END
setopt AUTO_CD
setopt AUTO_LIST

# 単語の区切り文字を指定する
autoload -Uz select-word-style
select-word-style default
# ここで指定した文字は単語区切りとみなされる
# / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

# beepをならさない
setopt no_beep

## TAB で順に補完候補を切り替える
setopt auto_menu

setopt magic_equal_subst
setopt mark_dirs

#export LS_COLORS='di=01;36'
export LSCOLORS=gxfxcxdxbxegedabagacad
export LANG=ja_JP.UTF-8 

PROMPT="%F{cyan}%n%f%% "
RPROMPT="[%F{magenta}%~%f]"
SPROMPT="correct: %R -> %r ? " 

#set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

# ヒストリの設定
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:${AWS_IAM_HOME}/bin

setopt prompt_subst
autoload -Uz VCS_INFO_get_data_git; VCS_INFO_get_data_git 2> /dev/null

function lprompt-git-current-branch {
local name st color gitdir action
if [[ "$PWD" =~ '/¥.git(/.*)?$' ]]; then
	return
fi
name=$(basename "`git symbolic-ref HEAD 2> /dev/null`")
if [[ -z $name ]]; then
	return
fi

gitdir=`git rev-parse --git-dir 2> /dev/null`
action=`VCS_INFO_git_getaction "$gitdir"` && action="($action)"

st=`git status 2> /dev/null`
color=%F{green}

echo "[$color$name$action%f%b] "
}

PROMPT+='`lprompt-git-current-branch`'

if which rbenv > /dev/null; 
then 
  eval "$(rbenv init - zsh)"; 
fi
