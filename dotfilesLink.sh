#!/bin/bash

mkdir -p ~/.vim/backup 2>/dev/null
mkdir -p ~/.vim/swap   2>/dev/null

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gvimrc ~/.gvimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimwinpos ~/.vimwinpos
ln -s ~/dotfiles/.viminfo ~/.viminfo
ln -s ~/dotfiles/.bashrc ~/.bashrc
#ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.emacs.d ~/.emacs.d
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
#ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/.railsrc ~/.railsrc
<<<<<<< HEAD

=======
ln -s ~/dotfiles/.RubyMine60 ~/.RubyMine60
ln -s ~/dotfiles/bin ~/bin
>>>>>>> 807a1b62a020e2b72c0a568fe5c84b6f9bc42989
