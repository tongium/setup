#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cli=(
    go
    node
    helm
    kubectl
    wrk
)

brew install ${cli[@]}

apps=(
    google-chrome
    visual-studio-code
    warp
    fork
    docker
    google-cloud-sdk
)

brew install --cask ${apps[@]}

ssh-keygen -t rsa