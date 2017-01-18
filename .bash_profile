ulimit -S -n 2048
#[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

for file in ~/.dotfiles/.{aliases,functions,bash_prompt}; do
  [ -r "$file" ] && source "$file"
done

#Let's make sure that all of our terminal tabs
# have the correct name and dont get stuck with
# the lsat server you logged into.
export PROMPT_COMMAND="echo -ne '\033]0;${USER}@${HOSTNAME}\007';$PROMPT_COMMAND"

#GENERAL SETTINGS

HISTFILESIZE=10000000

#COLORS AND SHIT

#FUNCTIONS FOR THE MODERN WORLD

#   gos:  SSH for my work computer
#   ---------------------------------------------------------
	function gos(){
	    if [[ $# -eq 0 ]]; then
            echo "No arguments provided"
        else
            ssh jcarmello@"$1";
        fi
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

