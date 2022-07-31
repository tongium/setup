#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cli=(
    git
    go
    node
    helm
    kubectl
    wrk
    git-flow
    nmap
    http-server
    golang-migrate
    mockery
    volta
)

brew install ${cli[@]}

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
touch ~/.zshenv

curl -o /usr/local/bin/cloud_sql_proxy https://dl.google.com/cloudsql/cloud_sql_proxy.darwin.amd64
chmod +x /usr/local/bin/cloud_sql_proxy

apps=(
    google-chrome
    visual-studio-code
    warp
    postman
    fork
    docker
    ngrok
    google-cloud-sdk
    dbeaver-community
    lens
    zoom
)

brew install --cask ${apps[@]}

ssh-keygen -t rsa