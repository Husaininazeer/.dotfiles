# Unsetting all the aliases made by plugins
unalias -a

# Setting my own ones
alias prof='$EDITOR ~/.zshrc'
alias sprof='source ~/.zshrc'

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias lsa='ls -a'
alias lsl='ls -al'

# Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit'
alias gp='git push'

# Mindful-related aliases
alias mind='cd /var/www/apps/mindful/'
alias arc='cd /var/www/apps/mindful/arc'
alias vle='cd /var/www/apps/mindful/ddev-vle'
alias freshnpminstall='rm -rf dist/ node_modules/ && npm i && git reset --hard'

# Personal aliases
alias dot='cd ~/.dotfiles'
alias dend='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/dendron/vault && $EDITOR .'
alias vimrc='$EDITOR ~/.vimrc'
alias tmuxc='$EDITOR ~/.tmux.conf'
alias aliases='$EDITOR ~/.oh-my-zsh/custom/alias.zsh'

