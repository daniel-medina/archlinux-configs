# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export BROWSER=chromium
export EDITOR=emacs
export QEMU_AUDIO_DRV=alsa
# Path to your oh-my-zsh installation.
export ZSH=/home/ifthenelse/.oh-my-zsh
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
ZSH_THEME="bullet-train"
plugins=(git)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Primordials
alias air="emacs /storage/sshd/mega/org/main.org"
alias emacs="emacs -nw"

# arch-mobile-ifthenelse specific
alias light="xbacklight -set"

# both specific
alias ta="wine ~/.wine/drive_c/CAVEDOG/TOTALA/TotalA.exe"
alias ta-cd1="fuseiso ~/.wine/drive_c/CAVEDOG/TOTALA/Total\ Annihilation\ CD\ 1.iso /media/iso -o nonempty"
alias ta-cd2="fuseiso ~/.wine/drive_c/CAVEDOG/TOTALA/Total\ Annihilation\ CD\ 2.iso /media/iso -o nonempty"
alias steam-wine-install="wine ~/symlink/wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe steam://rungameid/"

# arch-ifthenelse specific
alias faf="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Forged\ Alliance\ Forever/FAForever.exe"
alias "steam-wine"="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe"
alias bnet="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Battle.net/Battle.net\ Launcher.exe"
alias wasteland="sh /ssd/games/wasteland-2/start.sh"
alias wow="wine /ssd/wine/world\ of\ warcraft/WoW.exe"
alias tera="wine TERA-launcher.exe"
alias eve="wine ~/symlink/wine/drive_c/EVE/eve.exe"
alias stalker-misery="cd ~/symlink/wine/drive_c/Program\ Files\ \(x86\)/bitComposer\ Games/S.T.A.L.K.E.R.\ -\ Call\ of\ Pripyat && wine bin/xrEngine.exe"
alias stalker="cd /ssd/wine/S.T.A.L.K.E.R.\ -\ Call\ of\ Chernobyl && wine Stalker-CoC.exe"
alias warcraft-frozen="wine ~/symlink/wine/drive_c/Program\ Files\ \(x86\)/Warcraft\ III/war3.exe"
alias warcraft-chaos="wine ~/symlink/wine/drive_c/Program\ Files\ \(x86\)/Warcraft\ III/Warcraft\ III.exe"
alias sims="wine /ssd/wine/the\ sims\ 3/Game/Bin/TS3W.exe"

# devices
alias umount-iso="sudo umount /media/iso"

# computer infos
alias check-disks="df -h"
alias cpu-stress="stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 10s"
alias gpu-stress="glmark2"

# timed shutdowns
alias sd="sudo shutdown -h now"
alias sd1m="sudo shutdown -h 1"
alias sd2m="sudo shutdown -h 2"
alias sd5m="sudo shutdown -h 5"
alias sd30m="sudo shutdown -h 30"
alias sd1h="sudo shutdown -h 60"
alias sd2h="sudo shutdown -h 120"
alias sd3h="sudo shutdown -h 180"
alias sd4h="sudo shutdown -h 240"
alias sd5h="sudo shutdown -h 300"
alias sd10h="sudo shutdown -h 600"

# youtube syntaxes
alias music-dl="youtube-dl -f m4a"
alias video-dl="youtube-dl -f best"
alias youtube="mpsyt"

# admin orders
alias install="sudo emerge --ask"
alias uninstall="sudo emerge -C --ask"
alias update-system="sudo emerge --update --newuse --deep --with-bdeps=y @world"
alias update-flags="sudo emerge --update --changed-use --deep @world"
alias update-clean="sudo emerge -av --depclean"
alias esudo="sudo emacs"

# files
alias files="thunar"
alias copy="xclip -sel clip <"

# Network aliases
alias tether-probe="ip link"
alias tether-connect="sudo dhcpcd"

# VPN aliases - PIA
alias vpn-france="cd /etc/openvpn/client && sudo openvpn France.ovpn"
alias vpn-germany="cd /etc/openvpn/client && sudo openvpn Germany.ovpn"
alias vpn-japan="cd /etc/openvpn/client && sudo openvpn Japan.ovpn"
alias vpn-mexico="cd /etc/openvpn/client && sudo openvpn Mexico.ovpn"
alias vpn-romania="cd /etc/openvpn/client && sudo openvpn Romania.ovpn"
alias vpn-ireland="cd /etc/openvpn/client && sudo openvpn Ireland.ovpn"
alias vpn-india="cd /etc/openvpn/client && sudo openvpn India.ovpn"
alias vpn-singapore="cd /etc/openvpn/client && sudo openvpn Singapore.ovpn"
alias vpn-turkey="cd /etc/openvpn/client && sudo openvpn Turkey.ovpn"
alias vpn-sweden="cd /etc/openvpn/client && sudo openvpn Sweden.ovpn"
alias vpn-switzerland="cd /etc/openvpn/client && sudo openvpn Switzerland.ovpn"

# Dev aliases
alias nginx-on="sudo systemctl start mysqld nginx php-fpm"
alias nginx-restart="sudo systemctl restart mysqld nginx php-fpm"
alias nginx-off="sudo systemctl stop mysqld nginx php-fpm"

# Server aliases
alias kehros="ssh ifthenelse@188.166.16.248"
