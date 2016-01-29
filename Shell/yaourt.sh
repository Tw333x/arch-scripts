function yaset {
  sudo pacman -Sy git
  git clone https://aur.archlinux.org/package-query.git
  cd package-query
  makepkg -si --noconfirm
  cd ..
  git clone https://aur.archlinux.org/yaourt.git
  cd yaourt
  makepkg -si --noconfirm
  cd ..
}

function yain {
	yaourt -Sy $@ --noconfirm --needed --force
}

function yarm {
	yaourt -Rsc $@ --noconfirm
}

function update {
	yaourt -Syua --noconfirm --needed
	if hash apm 2>/dev/null; then
		apmup
	fi
	pushd /home/fusion809/GitHub/PKGBUILDs 
	./update-vim.sh
	popd
}



alias yaup=update
