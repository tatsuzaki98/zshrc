# pyenv
printf "checking for \e[36mpyenv\e[m..."
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  # eval "$(pyenv init --path)"
  # eval "$(pyenv init -)"
  printf " \e[32mok\e[m.\n"
else
  printf "not detected.\n"
fi


# nvm | Node.js version manager
printf "checking for \e[36mnvm\e[m..."
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  printf " \e[32mok\e[m.\n"
else
  printf "not detected.\n"
fi


# intel oneapi
printf "checking for \e[36moneapi\e[m..."
if [ -d "/opt/intel/oneapi" ]; then
  . /opt/intel/oneapi/setvars.sh > /dev/null
  printf " \e[32mok\e[m.\n"
else
  printf "not detected.\n"
fi

