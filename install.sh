wget https://github.com/neovim/neovim/releases/download/v0.12.0/nvim-linux-x86_64.appimage
chmod +x nvim-linux-x86_64.appimage
mv nvim-linux-x86_64.appimage $HOME/.local/bin/nvim

echo 'export PATH=$PATH:$HOME/.local/bin' >> $HOME/.bashrc

wget https://luarocks.github.io/luarocks/releases/luarocks-3.13.0-linux-x86_64.zip
unzip luarocks-3.13.0-linux-x86_64.zip 
rm luarocks-3.13.0-linux-x86_64.zip
mv luarocks-3.13.0-linux-x86_64/luarocks $HOME/.local/bin/luarocks
rm -r luarocks-3.13.0-linux-x86_64

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/DepartureMono.zip
mkdir -p $HOME/.local/share/fonts/DepartureMono
unzip DepartureMono.zip -d $HOME/.locale/share/fonts/DepartureMono
rm DepartureMono.zip
fc-cache -v

mkdir -p $HOME/.config/nvim
cp -r * $HOME/.config/nvim/
rm $HOME/.config/nvim/install.sh

# install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
uv tool install pyright
