# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Dotfiles
DOTFILES=$HOME/.dotfiles

# My custom
MY_ZSH=$DOTFILES/my-zsh
if [ -d $MY_ZSH ]; then
  ZSH_CUSTOM=$MY_ZSH
fi

ZSH_THEME="juniorz"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Iba related
alias no-k7="no-k7-spec && no-k7-spinach"
alias no-k7-spec="rm -rf spec/cassettes"
alias no-k7-spinach="rm -rf features/cassettes"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew bundler osx rake rvm)

# Start!
source $ZSH/oh-my-zsh.sh

# Any shell config
[[ -s "$DOTFILES/shell" ]] && source "$DOTFILES/shell"

# OS-specific
OS_FAMILY=`uname -s`
OS_SPECIFIC=$OS_FAMILY:l
[[ -s "$DOTFILES/myzsh-$OS_SPECIFIC.sh" ]] && source "$DOTFILES/myzsh-$OS_SPECIFIC.sh"

# Local config
[[ -s "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"
