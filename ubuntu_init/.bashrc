# .bashrc

# User specific aliases and functions
alias ls='ls -CF'
alias ll='ls -AlFh --show-control-chars --color=auto'
alias la='ls -CFal'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ps='ps auxfww'

export PS1='\[\033[01;32m\]\u@\H\[\033[01;34m\] \w \$\[\033[00m\]'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
