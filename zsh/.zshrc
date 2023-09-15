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

alias zsh="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias reload="source $HOME/.zshrc"

# Utility shorts
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias copyssh='pbcopy < $HOME/.ssh/id_ed25519.pub'
alias copyrsassh='pbcopy < $HOME/.ssh/ucr_rsa.pub'
alias showssh='cat ~/.ssh/id_ed25519.pub'
alias showrsassh='cat ~/.ssh/ucr_rsa.pub'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias fixaudio="sudo pkill -9 coreaudiod"
alias home="cd ~/"
alias shorts="cat ~/.zshrc | grep alias"
alias ll='ls -FGlAhp'
alias finder='open -a 'Finder' .'
alias makepdf="mkfile 1m"

alias nah="git reset --hard;git clean -df"
alias undo="git reset --soft HEAD^"
alias wip="git add . && git commit -m 'wip'"
alias commit="git add . && git commit -m"
alias pull="git pull"
alias gcm="git checkout master && git pull"
alias gcmn="git checkout main && git pull"
alias gp="git push"
alias gpo="git push -u origin"
alias ga="git add"
alias gcom="git commit -m"
alias boop='git commit --allow-empty -m "boop" && git push'
alias gt="git tag"
alias gpt="git push origin --tags"
alias gb="git branch"
alias gnb="git checkout -b"
alias checkout="gh pr checkout"
alias list="gh pr list"
alias gsw="git switch -C"
alias dev="npm run dev"
alias watch="npm run watch"
alias prod="npm run prod"
alias ci="composer install"
alias cu="composer update"

# Laravel shorts
alias a="php artisan"
alias t="a test"
alias tf="a test —filter"
alias pest="./vendor/bin/pest"
alias rl="a route:list"
alias mfs="a migrate:fresh --seed"
alias mf="a migrate:fresh"
alias m="a migrate"
alias tinker="a tinker"
alias model="a make:model"
alias controller="a make:controller"
alias event="a make:event"
alias listener="a make:listener"
alias mm="a make:migration"
alias k="art key:generate"

alias p="phpstorm ."
alias env="cp .env.example .env"
alias viewlog='tail -f -n 450 storage/logs/laravel*.log \
                | grep -i -E \
                    "^\[\d{4}\-\d{2}\-\d{2} \d{2}:\d{2}:\d{2}\]|Next [\w\W]+?\:" \
                    --color'
alias pint="./vendor/bin/pint"

alias rmlogs="rm storage/logs/laravel-*.log"
alias fu='a make:filament-user --name "Jimmy A" --email jimmy@aldape.dev --password password -n'
alias stan="./vendor/bin/phpstan analyse"