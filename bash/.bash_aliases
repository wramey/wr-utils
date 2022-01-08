# Helpful commands

###############################################
# For all Bash shells

alias c='clear'
alias ls='ls -FC --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias more='less'

alias ..='cd ..'
alias cd..='cd ..'

# Make parent directories if needed and report which directories were created
alias mkdir='mkdir -pv'

alias h='history'

# Print $PATH with line breaks
alias path='echo -e ${PATH//:/\\n}'

## Colorize the grep command output for ease of use (good for log files)##
# These seems to be standard on Raspbian and Windows now, but just in case
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


# Safety Net
# Prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Prevent changing perms on /
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Have wget resume/continue if there's a problem
alias wget='wget -c'

# So we don't have to remember tar flags
alias untar='tar -zxvf '

# Stop ping after 5 tries
alias ping='ping -c 5'

if [ $UID -ne 0 ]; then
    alias update='sudo apt-get upgrade'
fi

###############################################
# For Raspberry Pi only
# TODO: make this section conditional on processor (e.g. based on /proc/cpuinfo or lscpu)

# Power Management
# Alternative: sudo shutdown -r now
alias shutdown='sudo poweroff'
alias reboot='sudo reboot'

