VERMELHO="\[\\033[1;31m\]"
NONE="\[\\033[m\]"
PS1="$VERMELHO\u@\h$NONE:\w\\$ "
export PS1

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export EDITOR=`which vim`
export COR='--color=auto'
eval "`dircolors`"

alias ls='ls $COR'
alias l='ls $COR -lahF'
alias ll='ls $COR -lhF'

alias grep='grep $COR'
alias egrep='egrep $COR'
alias fgrep='fgrep $COR'
