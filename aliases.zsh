DOCKER_PHP_IMAGE=laravelsail/php81-composer:latest

alias copy:ssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reload:shell="source $HOME/.zshrc"

# Change directory
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"

# PHP
alias composer:fresh="rm -rf vendor/ composer.lock && composer install"

# Laravel Sail
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

alias sail:init='docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    $DOCKER_PHP_IMAGE \
    composer install --ignore-platform-reqs'

# JS
alias node:fresh="rm -rf node_modules/ package-lock.json && npm install"

# Git
alias nah='git reset --hard;git clean -df'

# Lottie
alias lottie="~/.dotfiles/bin/lottiefiles"
