# Ignore duplicate entries in history
setopt HIST_IGNORE_DUPS

# Load autocomplete in zsh
autoload bashcompinit
bashcompinit

# Alias with EXA (brew install exa) 
TREE_IGNORE="cache|log|logs|node_modules|vendor"
alias ls='exa --group-directories-first --header --group --long --git --icons'
alias la='ls -a'
alias ll='ls --git -l'
alias lt='ls --tree -D -L 2 -I ${TREE_IGNORE}'
alias ltt='ls --tree -D -L 3 -I ${TREE_IGNORE}'
alias lttt='ls --tree -D -L 4 -I ${TREE_IGNORE}'
alias ltttt='ls --tree -D -L 5 -I ${TREE_IGNORE}'

# Load the custom prompt.
source ~/.zsh_prompt 

# MUST BE LAST.
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
