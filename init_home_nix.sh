# home-managerの設定ファイルだけは自力でリンクするようにする
mkdir -p ~/.config/home-manager
ln -s "~/dotfiles/.config/home-manager/home.nix" "~/.config/home-manager/"

# home-managerをインストールする
nix-shell '<home-manager>' -A install
