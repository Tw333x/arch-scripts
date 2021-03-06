function cpi3 {
    rm -rf $CFG/i3-configs/.i3
    cp $HOME/.xsession $CFG/i3-configs
    cp -a $HOME/.i3 $CFG/i3-configs
}

function i3up {
    cdci3 && git checkout archlinux && cpi3 && push "$1" && cd -
}

function cpsw {
    cp /usr/local/bin/swimport $CFG/sway-config/usr/local/bin
    cp $HOME/.config/sway/config $CFG/sway-config
}

function swup {
    cdcsw && git checkout archlinux && cpsw && push "$1" && cd -
}
