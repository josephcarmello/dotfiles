ulimit -S -n 2048

for file in ~/dotfiles/.{aliases,functions,bash_prompt}; do
  [ -r "$file" ] && source "$file"
done
for file in ~/dotfiles/.shared/{*}; do
  [ -r "$file" ] && source "$file"
done
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Let's make sure that all of our terminal tabs
# have the correct name and dont get stuck with
# the last server you logged into.
export PROMPT_COMMAND="echo -ne '\033]0;@${HOSTNAME}\007';$PROMPT_COMMAND"
export HISTTIMEFORMAT="%d/%m/%y %T "

# GENERAL SETTINGS
HISTFILESIZE=10000000

export PATH="$HOME/.cargo/bin:/opt/local/bin:/opt/local/sbin:$PATH"
export EDITOR='vim'
export VISUAL='vim'
export BASH_SILENCE_DEPRECATION_WARNING=1

