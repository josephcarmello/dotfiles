ulimit -S -n 2048
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
export PATH="/usr/local/bin/packer:$PATH"

#COLORS AND SHIT
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#ALIAS TO MAKE THINGS A FUCK TON EASIER

#COLORED LS
alias ls='ls -GFh'

#Show all TCP/UDP Ports in Use
alias ports='netstat -tulanp'

#FULL OUTPUT LS
alias ll="ls -ahltrGF"

#SHORTHANDED HISTORY
alias h="history"



#FUNCTIONS FOR THE MODERN WORLD

#--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--#
#{ggrep} -- New grep setup so that it doesnt show "grep" in the list of processes
#--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--#
function ggrep()
{ ps aux | grep "$1" | grep -v grep;}

#--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--#
#{ffind} -- Finds the biggest files on the file system...kinda
#--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--#
function ffind()
{ for i in $(echo -e 'G\nM\nK'); do du -hsx /* 2>/dev/null | grep '[0-9]'$i | sort -rn; done;}

#--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--#
#{go} -- Easier ssh just =  go $HOSTNAME
#--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--#
function go()
{ ssh jcarmello@"$1"; }


#######
# END #
#######
