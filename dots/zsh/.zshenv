# Exports for zsh env variables and other stuff.

. "$HOME/.cargo/env"
export DOTFILES=$HOME/.dotfiles
export DOCKER=podman
export PATH=$HOME/bin:/usr/local/bin:$PATH
export LANG=en_US.UTF-8
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='hx'
fi
