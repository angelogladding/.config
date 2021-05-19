mkdir ~/.config/nvim
mkdir ~/.config/nvim/rplugin/python3
mkdir ~/.config/nvim/plugged

cp init.vim ~/.config/nvim/
wget https://raw.githubusercontent.com/angelogladding/nvim-micropub/main/nvim-micropub.py -qO ~/.config/nvim/rplugin/python3/nvim-micropub.py
nvim --headless +PlugInstall +qa
