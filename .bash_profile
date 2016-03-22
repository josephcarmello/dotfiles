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

#{go} -- Easier ssh just =  go $HOSTNAME
#--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--#
	function go(){
		 ssh jcarmello@"$1"; 
	}



#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }
