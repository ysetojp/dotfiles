export PATH="$HOME/.rbenv/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"

if type rbenv > /dev/null 2>&1 ; then
  eval "$(rbenv init -)"
fi
