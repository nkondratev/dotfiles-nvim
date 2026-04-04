wget https://github.com/neovim/neovim/releases/download/v0.12.0/nvim-linux-x86_64.appimage
sudo mv nvim-linux-x86_64 /usr/local/bin/nvim

mkdir -p $HOME/.config/nvim
mv * $HOME/.config/nvim/
rm $HOME/.config/nvim/install.sh
