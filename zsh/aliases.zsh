alias cook="claude --dangerously-skip-permissions"

# Configurations
alias dotf="cd $DOTFILES && $EDITOR $DOTFILES"
alias zsh="nano ~/.zshrc"
alias reload="source $HOME/.zshrc"
alias shorts="cat ~/.zshrc | grep alias"

# Directories
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dh="cd ~/"
alias ll='ls -FGlAhp'
alias la="ls -lah"
alias lsd="ls -lh | grep --color=never '^d'"
alias finder='open -a 'Finder' .'

# Git
alias g="git"
alias nah="git reset --hard;git clean -df"
alias undo="git reset --soft HEAD^"
alias wip="git add . && git commit -m 'wip'"
alias commit="git add . && git commit -m"
alias push="git push"
alias pull="git pull"
alias gcm="git checkout master && git pull"
alias gcmn="git checkout main && git pull"
alias gpo="git push -u origin"
alias ga="git add"
alias gcom="git commit -m"
alias boop='git commit --allow-empty -m "boop" && git push'
alias cool='gh pr review --approve'
alias gt="git tag"
alias gpt="git push origin --tags"
alias gb="git branch"
alias gnb="git checkout -b"
alias checkout="gh pr checkout"
alias list="gh pr list"
alias switch="git switch -C"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias approve="gh pr review --approve"
alias draft="gh pr create -d"

# Utility shorts
alias h="history | tail -10"
alias copy="tr -d '\n' | pbcopy"
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias copyssh='pbcopy < $HOME/.ssh/id_ed25519.pub'
alias copyrsassh='pbcopy < $HOME/.ssh/ucr_rsa.pub'
alias showssh='cat ~/.ssh/id_ed25519.pub'
alias showrsassh='cat ~/.ssh/ucr_rsa.pub'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias fixaudio="sudo pkill -9 coreaudiod"

# Quick functions
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias makepdf="mkfile 1m"
alias p="phpstorm ."

# Npm, Composer
alias dev="npm run dev"
alias watch="npm run watch"
alias prod="npm run prod"
alias build="npm run build"
alias ci="composer install"
alias cu="composer update"

# Laravel shorts
alias a="php artisan"
alias t="a test"
alias tf="a test —filter"
alias pest="./vendor/bin/pest"
alias stan="./vendor/bin/phpstan"
alias rl="a route:list"
alias mfs="a migrate:fresh --seed"
alias mf="a migrate:fresh"
alias tinker="a tinker"
alias model="a make:model"
alias controller="a make:controller"
alias event="a make:event"
alias listener="a make:listener"
alias mm="a make:migration"
alias k="a key:generate"
alias env="cp .env.example .env"
alias viewlog='tail -f -n 450 storage/logs/laravel*.log \
                | grep -i -E \
                    "^\[\d{4}\-\d{2}\-\d{2} \d{2}:\d{2}:\d{2}\]|Next [\w\W]+?\:" \
                    --color'
alias pint="./vendor/bin/pint"

alias rmlogs="rm storage/logs/laravel-*.log"
alias fu='a make:filament-user --name "Jimmy A" --email jimmy@aldape.dev --password password -n'

unalias shorts 2>/dev/null
shorts() {
  if [ -f ~/.dotfiles/zsh/aliases.zsh ]; then
    cat ~/.dotfiles/zsh/aliases.zsh
  else
    echo "No shorts man!"
  fi
}
