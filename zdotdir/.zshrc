#
# Executes commands at the start of an interactive session.
#

# Source Prezto.
if [[ -s "$HOME/.zprezto/init.zsh" ]]; then
  source "$HOME/.zprezto/init.zsh"
fi

# Frequent docker alias
alias dcr='docker-compose down -v && docker-compose up --build --force-recreate'
alias dcd='docker-compose down -v'
alias dsa='docker stop $(docker ps -a -q)'

# Generic alias
alias v='nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
