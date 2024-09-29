#!/bin/bash

# Install Nix
# Macの場合、standalone installは使えない
sh <(curl -L https://nixos.org/nix/install)

# source nix-daemon.sh
nixDaemonPath="/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh"
[ -e $nixDaemonPath ] && . $nixDaemonPath

# Link home.nix
mkdir -p ~/.config/home-manager
ln -s "$HOME/dotfiles/.config/home-manager/home.nix" "$HOME/.config/home-manager/"

# Install Home Manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

home-manager switch
cd "$HOME" || exit
