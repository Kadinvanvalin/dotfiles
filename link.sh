GIT_ROOT=$(git rev-parse --show-toplevel)

ln -s $GIT_ROOT/.config/alacritty.toml ~/.config/alacritty.toml
ln -s $GIT_ROOT/.config/nvim ~/.config/nvim

ln -s $GIT_ROOT/.config/sketchybar ~/.config/sketchybar 
