function edapnb {
  atom-bleeding $ATO/$1
}

function edaplb {
  unset LIST
  for i in "$@"
  do
    LIST+=($ATO/$i)
  done
  atom-bleeding $LIST
}

function edapkb {
	edapl about browser-plus-fix language-archlinux language-gfm2 language-ini-desktop language-patch2 language-shellscript language-solus terminal-fusion
}

function edargmb {
  edapl language-gfm2
}

function edarpkb {
  edapn language-archlinux
}

function edarshb {
  edapn language-shellscript
}

function edartfb {
  edapn terminal-fusion
}

function edarab {
  edapn about
}
