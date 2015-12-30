function yaset {
  sudo pacman -Sy git
  git clone https://aur.archlinux.org/package-query.git
  cd package-query
  makepkg -s && sudo pacman -U *.pkg.tar.xz --noconfirm
  cd ..
  git clone https://aur.archlinux.org/yaourt.git
  cd yaourt
  makepkg -s && sudo pacman -U *.pkg.tar.xz --noconfirm
  cd ..
}

function yain {
	yaourt -Sy $@ --noconfirm
}

function yarm {
	yaourt -Rsc $@ --noconfirm
}

function update {
	yaourt -Syua --noconfirm
}

alias yaup=update