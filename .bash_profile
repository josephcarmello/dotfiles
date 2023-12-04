ulimit -S -n 2048

for file in ~/dotfiles/.{aliases,functions,bash_prompt}; do
  [ -r "$file" ] && source "$file"
done
for file in ~/dotfiles/.shared/{*}; do
  [ -r "$file" ] && source "$file"
done
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export PATH="$HOME/.cargo/bin:/opt/local/bin:/opt/local/sbin:$PATH"
export EDITOR='vim'
export VISUAL='vim'
export BASH_SILENCE_DEPRECATION_WARNING=1

. "$HOME/.cargo/env"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.poetry/bin:$PATH"
