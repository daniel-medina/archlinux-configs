# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export BROWSER=chromium
export EDITOR=emacs
export QEMU_AUDIO_DRV=alsa
# Path to your oh-my-zsh installation.
export ZSH=/home/ifthenelse/.oh-my-zsh
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Customizing the powerlevel9k theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status dir_writable battery ip ssh context time)

plugins=(git)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Personal wiki
alias pwiki="vim ~/symlink/dev/personal-wiki/main.wiki"
alias pwiki-push="cd ~/symlink/dev/personal-wiki && git add -A && git commit -m 'updated' && git push && cd ~/"
alias pwiki-pull="cd ~/symlink/dev/personal-wiki && git pull && cd ~/"

# Dotfiles
alias dots-push="cd ~/symlink/dev/dotfiles && git add -A && git commit -m 'updated' && git push && cd ~/"
alias dots-pull="cd ~/symlink/dev/dotfiles && git pull && cd ~/"

# Primordials
alias vim=nvim
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
alias kehros="ssh ifthenelse@188.166.16.248"
