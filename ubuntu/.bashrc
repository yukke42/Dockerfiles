# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Enable color
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# User specific aliases and functions
alias l='ls'
alias la='l -A'
alias ll='ls -lh'
alias lla='ll -A'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# a line prompt
export PS1='\[\033[01;35m\]\u@\H\[\033[01;32m\] \w \$\[\033[00m\]'
