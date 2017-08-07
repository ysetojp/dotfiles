if [ "$(uname)" == 'Darwin' ]; then
  macosx/install.sh
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  linux/install.sh
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
  win/install.sh
fi
