ulimit -S -n 2048
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
#export PATH="/usr/local/bin/packer:$PATH"
#GENERAL SETTINGS

HISTFILESIZE=10000000

#COLORS AND SHIT
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#ALIAS TO MAKE THINGS A FUCK TON EASIER

#ALLOW ALIAS TO BE SUDO'd
alias sudo='sudo '

#RECURSIVELY REMOVE .DS_STORE FILES
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

#COLORED LS
alias ls='ls -GFh'

#FULL OUTPUT LS
alias ll="ls -ahltrGF"

#SHORTHANDED
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias g="git"
alias h="history"
alias j="jobs"
alias v="vim"

#NETWORKING
alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs
alias flush="sudo killall -HUP mDNSResponder"
alias sshi="ssh -i ~/.ssh/joeyc-keypair.pem"        # ssh /w aws    SSH command that sutomatically uses AWS pem


#SHOW/HIDE EVERYTHING - GREAT FOR PRESENTATIONS
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"




#FUNCTIONS FOR THE MODERN WORLD

#   go:  SSH for my work computer
#   ---------------------------------------------------------
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

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }

 #   headers:  get the headers of a cURL request
  #   ---------------------------------------------------------
       function headers(){
                 curl -is "$@" | sed '/^$/,$d'
                      }

##
# Your previous /Users/joey.carmello/.bash_profile file was backed up as /Users/joey.carmello/.bash_profile.macports-saved_2016-04-25_at_13:30:49
##

# MacPorts Installer addition on 2016-04-25_at_13:30:49: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

