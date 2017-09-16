# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export BROWSER=firefox
export EDITOR=nvim
export GIT_EDITOR=nvim
export QEMU_AUDIO_DRV=alsa
# Path to your oh-my-zsh installation.
export ZSH=/home/ifthenelse/.oh-my-zsh
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
ZSH_THEME="bira"

# Base16
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Customizing the powerlevel9k theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status dir_writable battery ip ssh context time)

plugins=(git)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Vim
alias vim="nvim"

# Personal wiki
alias pwiki="vim ~/symlink/knowledge/repository/personal-wiki/main.wiki"
alias pwiki-push="cd ~/symlink/knowledge/repository/personal-wiki && git add -A && git commit -m 'updated' && git push && cd ~/"
alias pwiki-pull="cd ~/symlink/knowledge/repository/personal-wiki && git pull && cd ~/"

# Wine prefixes
alias wine-prefix-office="WINEPREFIX=~/.wine-office WINEARCH=win32"

# Dotfiles
alias dots-push="cd ~/symlink/knowledge/repository/dotfiles && git add -A && git commit -m 'updated' && git push && cd ~/"
alias dots-pull="cd ~/symlink/knowledge/repository/dotfiles && git pull && cd ~/"

# Kernel
alias kernel-config="cd /usr/src/linux && sudo make menuconfig && cd ~"
alias kernel-compile="cd /usr/src/linux && sudo make && cd ~"
alias kernel-install-modules="cd /usr/src/linux && sudo make modules_install && cd ~"
alias kernel-install="cd /usr/src/linux && sudo make install && cd ~"

# Portage
alias portage-use="sudo vim /etc/portage/package.use"
alias portage-accept-keywords="sudo vim /etc/portage/package.accept_keywords"
alias portage-keywords="sudo vim /etc/portage/package.keywords"
alias portage-mask="sudo vim /etc/portage/package.mask"
alias portage-unmask="sudo vim /etc/portage/package.unmask"
alias portage-license="sudo vim /etc/portage/package.license"

# Development
alias dev="cd ~/symlink/knowledge/repository"

# arch-mobile-ifthenelse specific
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
alias update-clean="sudo emerge --ask -av --depclean"
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

# VPN
alias vpn-france="cd ~/symlink/cloud/safety/vpn && sudo openvpn France.ovpn"
alias vpn-germany="cd ~/symlink/cloud/safety/vpn && sudo openvpn Germany.ovpn"
alias vpn-ireland="cd ~/symlink/cloud/safety/vpn && sudo openvpn Ireland.ovpn"
alias vpn-norway="cd ~/symlink/cloud/safety/vpn && sudo openvpn Norway.ovpn"
alias vpn-finland="cd ~/symlink/cloud/safety/vpn && sudo openvpn Finland.ovpn"
alias vpn-denmark="cd ~/symlink/cloud/safety/vpn && sudo openvpn Denmark.ovpn"
alias vpn-brazil="cd ~/symlink/cloud/safety/vpn && sudo openvpn Brazil.ovpn"
alias vpn-hong-kong="cd ~/symlink/cloud/safety/vpn && sudo openvpn Hong\ Kong.ovpn"
alias vpn-india="cd ~/symlink/cloud/safety/vpn && sudo openvpn India.ovpn"
alias vpn-japan="cd ~/symlink/cloud/safety/vpn && sudo openvpn Japan.ovpn"
alias vpn-mexico="cd ~/symlink/cloud/safety/vpn && sudo openvpn Mexico.ovpn"
alias vpn-netherlands="cd ~/symlink/cloud/safety/vpn && sudo openvpn Netherlands.ovpn"
alias vpn-israel="cd ~/symlink/cloud/safety/vpn && sudo openvpn Israel.ovpn"
alias vpn-italy="cd ~/symlink/cloud/safety/vpn && sudo openvpn Italy.ovpn"
alias vpn-romania="cd ~/symlink/cloud/safety/vpn && sudo openvpn Romania.ovpn"
alias vpn-singapore="cd ~/symlink/cloud/safety/vpn && sudo openvpn Singapore.ovpn"
alias vpn-south-korea="cd ~/symlink/cloud/safety/vpn && sudo openvpn South\ Korea.ovpn"
alias vpn-switzerland="cd ~/symlink/cloud/safety/vpn && sudo openvpn Switzerland.ovpn"
alias vpn-turkey="cd ~/symlink/cloud/safety/vpn && sudo openvpn Turkey.ovpn"
alias vpn-sweden="cd ~/symlink/cloud/safety/vpn && sudo openvpn Sweden.ovpn"
alias vpn-new-zealand="cd ~/symlink/cloud/safety/vpn && sudo openvpn New\ Zealand.ovpn"
alias vpn-uk1="cd ~/symlink/cloud/safety/vpn && sudo openvpn UK\ London.ovpn"
alias vpn-uk2="cd ~/symlink/cloud/safety/vpn && sudo openvpn UK\ Southampton.ovpn"
alias vpn-us1="cd ~/symlink/cloud/safety/vpn && sudo openvpn US\ California.ovpn"
alias vpn-us2="cd ~/symlink/cloud/safety/vpn && sudo openvpn US\ Chicago.ovpn"
alias vpn-us3="cd ~/symlink/cloud/safety/vpn && sudo openvpn US\ East.ovpn"
alias vpn-us4="cd ~/symlink/cloud/safety/vpn && sudo openvpn US\ Florida.ovpn"
alias vpn-us5="cd ~/symlink/cloud/safety/vpn && sudo openvpn US\ Midwest.ovpn"
alias vpn-us6="cd ~/symlink/cloud/safety/vpn && sudo openvpn US\ New\ York\ City.ovpn"
alias vpn-us7="cd ~/symlink/cloud/safety/vpn && sudo openvpn US\ Seattle.ovpn"
alias vpn-us8="cd ~/symlink/cloud/safety/vpn && sudo openvpn US\ Silicon\ Valley.ovpn"
alias vpn-us9="cd ~/symlink/cloud/safety/vpn && sudo openvpn US\ Texas.ovpn"
alias vpn-us10="cd ~/symlink/cloud/safety/vpn && sudo openvpn US\ West.ovpn"
alias vpn-au1="cd ~/symlink/cloud/safety/vpn && sudo openvpn AU\ Melbourne.ovpn"
alias vpn-au2="cd ~/symlink/cloud/safety/vpn && sudo openvpn AU\ Sydney.ovpn"
alias vpn-ca1="cd ~/symlink/cloud/safety/vpn && sudo openvpn CA\ Montreal.ovpn"
alias vpn-ca2="cd ~/symlink/cloud/safety/vpn && sudo openvpn CA\ Toronto.ovpn"
