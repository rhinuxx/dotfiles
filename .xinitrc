# vim: ft=sh
xrdb ~/.Xresources

#export XMODIFIERS=@im=SCIM
export XMODIFIERS=@im=fcitx
#export GTK_IM_MODULE=xim
#export QT_IM_MODULE=xim
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export SDL_AUDIODRIVER="alsa"

# D-bus
#if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    #eval `dbus-launch --sh-syntax --exit-with-session`
#fi

#scim -d &
fcitx &
xscreensaver -no-splash&
#killall -s9 urxvtd
#urxvtd&
#fetchmail &
wicd-client -t &
#tpb -d&
#dropboxd &
xmodmap $HOME/.Xmodmap &
gtk-redshift -l 31.24:121.2 -t 6500:5500 -m vidmode &

DEFAULT_SESSION=awesome

case $1 in
    awesome)
        exec awesome
        ;;
    fluxbox)
        exec startfluxbox
        ;;
    subtle)
        exec subtle
        ;;
    i3)
        exec i3
        ;;
    wmii)
        exec wmii
        ;;
    wmfs)
        exec wmfs
        ;;
    *)
        exec $DEFAULT_SESSION
        ;;
esac

xsetroot -cursor_name left_ptr
