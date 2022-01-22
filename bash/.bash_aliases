# Helpful commands

###############################################
# For all Bash shells

alias c='clear'
alias more='less'
alias oops='!-1 | more'

# Use 'exa' if it is available, instead of 'ls' (ref: https://the.exa.website)
if command -v exa &> /dev/null
then
    alias ls='exa'
    alias la='exa -a'
    alias ll='exa -l'
else
    alias ls='ls -FC --color=auto'
    alias la='ls -A'
    alias ll='ls -l'
fi

# Use 'bat' if available, instead of 'cat' (ref: https://github.com/sharkdp/bat)
if command -v batcat &> /dev/null
then
    alias bat='batcat'
    alias cat='bat'
fi

alias ..='cd ..'
alias cd..='cd ..'

# Make parent directories if needed and report which directories were created
alias mkdir='mkdir -pv'

alias h='history'
alias top='htop'

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

# Have wget resume/continue if there's a problem (go read the man page)
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

# This section only used when on Raspberry Pi (easier than grep'ing /proc/cpuinfo "Model" line)
if egrep -q "^Raspberry" /proc/device-tree/model; then
  #echo "Running on Raspberry Pi"

  # Power Management
  alias shutdown='sudo poweroff'    # Alternative: sudo shutdown -r now
  alias reboot='sudo reboot'
fi
