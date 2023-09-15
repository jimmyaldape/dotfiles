# Global options
export DOTFILES=$HOME/Code/dotfiles
export ZSH=$HOME/.oh-my-zsh
export EDITOR=code
export GPG_TTY=$(tty)

COMPLETION_WAITING_DOTS=true

# Oh my zsh configurations.
ZSH_THEME=""
ZSH_CUSTOM=$DOTFILES/zsh
unsetopt nomatch
plugins=(gh zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Homebrew binaries
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(gh completion -s zsh)"

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Rust/Solana shit
export CPATH="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"

# https://github.com/sindresorhus/pure
fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit
promptinit
prompt pure