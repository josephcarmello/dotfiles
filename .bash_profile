ulimit -S -n 2048

for file in ~/.dotfiles/.{aliases,functions,bash_prompt}; do
  [ -r "$file" ] && source "$file"
done

#Let's make sure that all of our terminal tabs
# have the correct name and dont get stuck with
# the last server you logged into.

#export PROMPT_COMMAND="echo -ne '\033]0;${USER}@${HOSTNAME}\007';$PROMPT_COMMAND"
export PROMPT_COMMAND="echo -ne '\033]0;@${HOSTNAME}\007';$PROMPT_COMMAND"
export HISTTIMEFORMAT="%d/%m/%y %T "
#GENERAL SETTINGS

HISTFILESIZE=10000000

# MacPorts Installer addition on 2016-04-25_at_13:30:49: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH=$PATH:/Applications/Utilities/sox-14.4.2
# Finished adapting your PATH environment variable for use with MacPorts.

