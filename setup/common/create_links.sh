#!/bin/bash

mkdir -p ~/workspace         2>/dev/null
mkdir -p ~/app               2>/dev/null
mkdir -p ~/.fonts            2>/dev/null
mkdir -p ~/.config/nvim/dein 2>/dev/null
# mkdir -p ~/.vim/backup       2>/dev/null
# mkdir -p ~/.vim/swap         2>/dev/null

# ln -s ~/dotfiles/.vimrc ~/.vimrc
# ln -s ~/dotfiles/.gvimrc ~/.gvimrc
# ln -s ~/dotfiles/.vim ~/.vim
# ln -s ~/dotfiles/.vimwinpos ~/.vimwinpos
# ln -s ~/dotfiles/.viminfo ~/.viminfo
# ln -s ~/dotfiles/.bashrc ~/.bashrc
# ln -s ~/dotfiles/.bash_profile ~/.bash_profile
# ln -s ~/dotfiles/.emacs.d ~/.emacs.d
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
#ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global
# ln -s ~/dotfiles/.railsrc ~/.railsrc
ln -s ~/dotfiles/bin ~/bin
ln -s ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/.config/nvim/colors ~/.config/nvim/colors
ln -s ~/dotfiles/.config/nvim/dein/plugins.toml ~/.config/nvim/dein/plugins.toml

# for a lightline.vim, an awesome vim plugin
ln -s ~/dotfiles/fonts/Ricty-Regular-Powerline.ttf ~/.fonts/Ricty-Regular-Powerline.ttf
ln -s ~/dotfiles/fonts/Ricty-Regular.ttf ~/.fonts/Ricty-Regular.ttf

# use 'vi' command as nvim
sudo mv /usr/bin/vi /usr/bin/vim
sudo ln -s /usr/bin/nvim /usr/bin/vi
