ulimit -S -n 2048
#[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

for file in ~/.dotfiles/.{aliases,functions,bash_prompt}; do
  [ -r "$file" ] && source "$file"
done

#Let's make sure that all of our terminal tabs
# have the correct name and dont get stuck with
# the last server you logged into.

export PROMPT_COMMAND="echo -ne '\033]0;${USER}@${HOSTNAME}\007';$PROMPT_COMMAND"

#GENERAL SETTINGS

HISTFILESIZE=10000000

# MacPorts Installer addition on 2016-04-25_at_13:30:49: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

