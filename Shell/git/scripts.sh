## Update local arch-scripts repo
function cps {
  rm -rf $ARS/Shell && mkdir $ARS/Shell
  sudo rm -rf $ARS/root/Shell && mkdir $ARS/root/Shell
  sudo chmod +x {$HOME,/root}/Shell/{*.sh,*/*.sh}
  cp -a ~/Shell/* $ARS/Shell
  cp -a ~/{.bashrc,.zshrc} $ARS/
  sudo cp -a /root/{Shell,.bashrc,.zshrc} $ARS/root/
}

function cdas {
  cd $ARS
}

## Update sabayon-scripts GitHub repo
function shup {
  cps && cdas && push "$1" && cd -
}

function sudoers {
	sudo cp -a /home/fusion809/GitHub/arch-scripts/etc/sudoers /etc/sudoers
}

## Update bin repo
function bup {
  cd $HOME/bin
  if [[ -n "$1" ]]; then
    push "$1"
  else
    push "Updating"
  fi
  cd -
}
