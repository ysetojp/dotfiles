$VimColorsPath = "C:\App\vim74-kaoriya-win64\vim74\colors\"

cd ../
cp .vimrc  $HOME/_vimrc
cp .gvimrc $HOME/_gvimrc
cp .vimwinpos $HOME/.vimwinpos
cp -Recurse .vim $HOME/
cd $HOME
cd .vim
cp colors/* $VimColorsPath
mkdir backup
mkdir swap
cd bundle
git clone https://github.com/Shougo/neobundle.vim
