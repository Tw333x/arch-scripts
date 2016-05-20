function cpobs {
	cd $HOME/OBS/home:fusion809:arch_extra
	for i in "$@"
	do
		pbget $i
		cp -a package-query/_service $i
    osc add $i
    cd $i
  	osc ci -m "Initial commit"
		cd ..
	done
}

function cpobsa {
	cd $HOME/OBS/home:fusion809:arch_extra
	for i in "$@"
	do
		curlaur $i
		cp -a package-query/_service $i
    osc add $i
    cd $i
  	osc ci -m "Initial commit"
		cd ..
	done
}

function cpobsp {
	cd $HOME/OBS/home:fusion809:arch_extra:python
	for i in "$@"
	do
		pbget $i
		cp -a urlgrabber/_service $i
    osc add $i
    cd $i
  	osc ci -m "Initial commit"
		cd ..
	done
}

function cpobsm {
	cd $HOME/OBS/home:fusion809:arch_extra:multilib
	for i in "$@"
	do
		pbget $i
		cp -a ../home:fusion809:arch_extra/package-query/_service $i
		osc add $i
		cd $i
		osc ci -m "Initial commit"
		cd ..
	done
}

function cpobsc {
	cd $HOME/OBS/home:fusion809:arch_extra:community
	for i in "$@"
	do
		pbget $i
		cp -a ../home:fusion809:arch_extra/package-query/_service $i
		osc add $i
		cd $i
		osc ci -m "Initial commit"
		cd ..
	done
}

function cpobse {
	cd $HOME/OBS/home:fusion809:arch_extra:extra
	for i in "$@"
	do
		pbget $i
		cp -a ../home:fusion809:arch_extra/package-query/_service $i
		osc add $i
		cd $i
		osc ci -m "Initial commit"
		cd ..
	done
}

function cpserv {
	cp -a $OBS/package-query/_service .
}

function obsa {
	PD=${PWD##*/}
	pushd ..
	osc add $PD
	popd
}

function cpobsn {
	for i in "$@"
	do
		cdobsa
		mkdir nodejs-$i
		cd nodejs-$i
		npm2PKGBUILD $i > PKGBUILD
		cpserv
		obsa
		atom PKGBUILD
	done
}

function cppkm {
	cp -a $PKG/${PWD##*/}/{PKGBUILD,*.xz} .
}

function cppkmp {
	cp -a $PKG/${PWD##*/}/PKGBUILD .
}
