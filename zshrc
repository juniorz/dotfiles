# Dotfiles
DOTFILES=$HOME/.dotfiles

source "$DOTFILES/zsh/env.zsh"
source "$DOTFILES/zsh/alias.zsh"
source "$DOTFILES/zsh/oh-my-zsh-conf.zsh"

# no correction
unsetopt correct_all

# Any shell config
[[ -s "$DOTFILES/shell" ]] && source "$DOTFILES/shell"

# OS-specific
OS_FAMILY=`uname -s`
OS_SPECIFIC=$OS_FAMILY:l
[[ -s "$DOTFILES/myzsh-$OS_SPECIFIC.sh" ]] && source "$DOTFILES/myzsh-$OS_SPECIFIC.sh"

# Local config (and any sensitive data)
[[ -s "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
