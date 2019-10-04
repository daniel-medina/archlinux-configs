# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/bin/game:/usr/local/bin:$PATH
export WINEPREFIX=$HOME/.wine
export BROWSER=chromium
export EDITOR=nvim
export DXVK_HUD=0
export GIT_EDITOR=nvim
export QEMU_AUDIO_DRV=alsa
#export XDG_RUNTIME_DIR=/tmp
# Path to your oh-my-zsh installation.
export ZSH=/home/ifthenelse/.oh-my-zsh
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
ZSH_THEME="agnoster"
export ANDROID_HOME=$HOME/android
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Base16
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Customizing the powerlevel9k theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status dir_writable battery ip ssh context time)

plugins=(git)
source $ZSH/oh-my-zsh.sh

# Vim
alias vim="nvim"

# Personal wiki
alias pwiki="vim ~/repository/personal-wiki/main.wiki"
alias pwiki-push="cd ~/repository/personal-wiki && git add -A && git commit -m 'updated' && git push && cd ~/"
alias pwiki-pull="cd ~/repository/personal-wiki && git pull && cd ~/"

# Wine prefixes
alias wine-32="WINEPREFIX=~/.wine-32 WINEARCH=win32"

# Wine games
alias stronghold="WINEPREFIX=~/.wine-32 WINEARCH=win32 ~/.wine/drive_c/Program\ Files\ \(x86\)/Firefly\ Studios/Stronghold\ Kingdoms/StrongholdKingdoms.exe"
alias wow="wine ~/game/World\ of\ Warcraft/_retail_/Wow.exe"
alias battlenet="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Battle.net/Battle.net\ Launcher.exe"
alias faf="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Downlord\'s\ FAF\ Client/downlords-faf-client.exe"
alias ckan="mono ~/storage/ssd/game/steam/steamapps/common/Kerbal\ Space\ Program/ckan.exe"
alias ksp="cd ~/game/steam/steamapps/common/Kerbal\ Space\ Program && ./KSP.x86_64"
alias minecraft="./game/minecraft/minecraft-launcher.sh"
alias sims="wine ~/game/The\ Sims\ 3/Game/Bin/TS3W.exe"
alias stalker="cd /storage/ssd/stalker-call-of-chernobyl && wine Stalker-CoC.exe && cd"
alias mod-organizer="wine ~/.wine/drive_c/Modding/MO2/ModOrganizer.exe"

# Classes
alias university="cd ~/repository/university"
alias algebra="cd ~/repository/university/hlma101"
alias calculus="cd ~/repository/university/hlse101"
alias physics="cd ~/repository/university/hlph101"
alias revision-sheet="cd ~/repository/university/revision-sheet"

# Kernel
alias kernel-config="cd /usr/src/linux && sudo make menuconfig && cd ~"
alias kernel-compile="cd /usr/src/linux && sudo make && cd ~"
alias kernel-install-modules="cd /usr/src/linux && sudo make modules_install && cd ~"
alias kernel-install="cd /usr/src/linux && sudo make install && cd ~"

# Portage
alias portage-use="nvim /etc/portage/package.use/main"
alias portage-accept-keywords="nvim /etc/portage/package.accept_keywords/main"
alias portage-keywords="nvim /etc/portage/package.keywords/main"
alias portage-mask="nvim /etc/portage/package.mask/main"
alias portage-unmask="nvim /etc/portage/package.unmask/main"
alias portage-license="nvim /etc/portage/package.license/main"

# Devices
alias wileyfox-mount="simple-mtpfs /media/usb/android"
alias wileyfox-umount="sudo umount /media/usb/android"

# Development
alias repository="cd ~/repository"
alias website="cd ~/repository/website"
alias factory="cd ~/repository/factory"
alias freelance="cd ~/repository/factory/freelance"

# Repositories
alias universit-push="cd ~/repository/university && git add -A && git commit -m 'updated' && git push && cd ~/"
alias university-pull="cd ~/repository/university && git pull"
alias factory-push="cd ~/repository/factory && git add -A && git commit -m 'updated' && git push && cd ~/"
alias factory-pull="cd ~/repository/factory && git pull && cd ~/"
alias dots-push="cd ~/repository/dotfiles && git add -A && git commit -m 'updated' && git push && cd ~/"
alias dots-pull="cd ~/repository/dotfiles && git pull && cd ~/"
alias safety-push="cd ~/repository/safety && git add -A && git commit -m 'updated' && git push && cd ~/"
alias safety-pull="cd ~/repository/safety && git pull && cd ~/"

# slave specific
alias light="xbacklight -set"

# computer infos
alias devices="sudo lsblk -o NAME,MOUNTPOINT,FSTYPE,LABEL,PARTUUID,SIZE,HOTPLUG"
alias rename="sudo e2label"
alias storages="df -h"

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
alias update-system="sudo emerge --ask --update --newuse --deep --with-bdeps=y @world"
alias update-flags="sudo emerge --ask --update --changed-use --deep @world"
alias emerge-depclean="sudo emerge --ask -av --depclean"
alias vsudo="sudo nvim"

# files
alias files="thunar"
alias copy="xclip -sel clip <"

# Network aliases
alias tether-probe="ip link"
alias tether-connect="sudo dhcpcd"
alias wifi="wpa_cli"

# Dev aliases
alias nginx-on="sudo systemctl start mysqld nginx php-fpm"
alias nginx-restart="sudo systemctl restart mysqld nginx php-fpm"
alias nginx-off="sudo systemctl stop mysqld nginx php-fpm"

# Server aliases
alias kehros="ssh ifthenelse@188.166.16.248 -p 4442"
alias master="ssh ifthenelse@192.168.1.31 -p 4658 -Y"

# FiveM
alias fivem="cd ~/repository/factory/fivem"
alias fivem-start="cd ~/repository/factory/fivem/server-data && bash ~/repository/factory/fivem/server/run.sh +exec server.cfg"

# VPN - tcp
alias vpn-tcp-france-1="cd ~/repository/safety/vpn/tcp && sudo openvpn fr77.nordvpn.com.tcp.ovpn"
alias vpn-tcp-france-2="cd ~/repository/safety/vpn/tcp && sudo openvpn fr78.nordvpn.com.tcp.ovpn"
alias vpn-tcp-france-3="cd ~/repository/safety/vpn/tcp && sudo openvpn fr176.nordvpn.com.tcp.ovpn"
alias vpn-tcp-france-4="cd ~/repository/safety/vpn/tcp && sudo openvpn fr200.nordvpn.com.tcp.ovpn"
alias vpn-tcp-france-5="cd ~/repository/safety/vpn/tcp && sudo openvpn fr368.nordvpn.com.tcp.ovpn"
alias vpn-tcp-france-6="cd ~/repository/safety/vpn/tcp && sudo openvpn fr390.nordvpn.com.tcp.ovpn"
alias vpn-tcp-uk-1="cd ~/repository/safety/vpn/tcp && sudo openvpn uk1488.nordvpn.com.tcp.ovpn"
alias vpn-tcp-uk-2="cd ~/repository/safety/vpn/tcp && sudo openvpn uk73.nordvpn.com.tcp.ovpn"
alias vpn-tcp-uk-3="cd ~/repository/safety/vpn/tcp && sudo openvpn uk81.nordvpn.com.tcp.ovpn"
alias vpn-tcp-uk-4="cd ~/repository/safety/vpn/tcp && sudo openvpn uk467.nordvpn.com.tcp.ovpn"
alias vpn-tcp-uk-5="cd ~/repository/safety/vpn/tcp && sudo openvpn uk701.nordvpn.com.tcp.ovpn"
alias vpn-tcp-uk-6="cd ~/repository/safety/vpn/tcp && sudo openvpn uk699.nordvpn.com.tcp.ovpn"
alias vpn-tcp-us-6="cd ~/repository/safety/vpn/tcp && sudo openvpn us349.nordvpn.com.tcp.ovpn"
alias vpn-tcp-us-2="cd ~/repository/safety/vpn/tcp && sudo openvpn us438.nordvpn.com.tcp.ovpn"
alias vpn-tcp-us-3="cd ~/repository/safety/vpn/tcp && sudo openvpn us502.nordvpn.com.tcp.ovpn"
alias vpn-tcp-us-4="cd ~/repository/safety/vpn/tcp && sudo openvpn us511.nordvpn.com.tcp.ovpn"
alias vpn-tcp-us-5="cd ~/repository/safety/vpn/tcp && sudo openvpn us510.nordvpn.com.tcp.ovpn"
alias vpn-tcp-us-6="cd ~/repository/safety/vpn/tcp && sudo openvpn us503.nordvpn.com.tcp.ovpn"

# VPN - udp
alias vpn-udp-france-1="cd ~/repository/safety/vpn/udp && sudo openvpn fr77.nordvpn.com.udp.ovpn"
alias vpn-udp-france-2="cd ~/repository/safety/vpn/udp && sudo openvpn fr78.nordvpn.com.udp.ovpn"
alias vpn-udp-france-3="cd ~/repository/safety/vpn/udp && sudo openvpn fr176.nordvpn.com.udp.ovpn"
alias vpn-udp-france-4="cd ~/repository/safety/vpn/udp && sudo openvpn fr200.nordvpn.com.udp.ovpn"
alias vpn-udp-france-5="cd ~/repository/safety/vpn/udp && sudo openvpn fr368.nordvpn.com.udp.ovpn"
alias vpn-udp-france-6="cd ~/repository/safety/vpn/udp && sudo openvpn fr390.nordvpn.com.udp.ovpn"
alias vpn-udp-uk-1="cd ~/repository/safety/vpn/udp && sudo openvpn uk1488.nordvpn.com.udp.ovpn"
alias vpn-udp-uk-2="cd ~/repository/safety/vpn/udp && sudo openvpn uk73.nordvpn.com.udp.ovpn"
alias vpn-udp-uk-3="cd ~/repository/safety/vpn/udp && sudo openvpn uk81.nordvpn.com.udp.ovpn"
alias vpn-udp-uk-4="cd ~/repository/safety/vpn/udp && sudo openvpn uk467.nordvpn.com.udp.ovpn"
alias vpn-udp-uk-5="cd ~/repository/safety/vpn/udp && sudo openvpn uk701.nordvpn.com.udp.ovpn"
alias vpn-udp-uk-6="cd ~/repository/safety/vpn/udp && sudo openvpn uk699.nordvpn.com.udp.ovpn"
alias vpn-udp-us-6="cd ~/repository/safety/vpn/udp && sudo openvpn us349.nordvpn.com.udp.ovpn"
alias vpn-udp-us-2="cd ~/repository/safety/vpn/udp && sudo openvpn us438.nordvpn.com.udp.ovpn"
alias vpn-udp-us-3="cd ~/repository/safety/vpn/udp && sudo openvpn us502.nordvpn.com.udp.ovpn"
alias vpn-udp-us-4="cd ~/repository/safety/vpn/udp && sudo openvpn us511.nordvpn.com.udp.ovpn"
alias vpn-udp-us-5="cd ~/repository/safety/vpn/udp && sudo openvpn us510.nordvpn.com.udp.ovpn"
alias vpn-udp-us-6="cd ~/repository/safety/vpn/udp && sudo openvpn us503.nordvpn.com.udp.ovpn"
