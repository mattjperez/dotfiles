# Spaceship Prompt
autoload -U promptinit; promptinit
prompt spaceship

# zoom meetings support for screenshare
export XDG_CURRENT_DESKTOP=gnome

export QT_QPA_PLATFORM=wayland

# GCP IAP access to numpy
export CLOUDSDK_PYTHON_SITEPACKAGES=1

# zoxide
eval "$(zoxide init zsh)"
#eval "$(wmname LG3D)"

# direnv
eval "$(direnv hook zsh)"

# Chapel: Avoid contention for runtime
export CHPL_RT_OVERSUBSCRIBED=yes

#export GPG_TTY=$TTY
# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Go settings
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

#export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock
 
# Aliases
alias ssh='TERM=xterm-256color ssh'
alias batt='upower -i /org/freedesktop/UPower/devices/battery_BAT1'
alias etherup='sudo ip link set enp0s13f0u2u1 up'
alias etherdown='sudo ip link set enp0s13f0u2u1 down'
alias ls='exa'
alias ll='exa -lha'
alias lr='exa -lha --tree'
alias please='sudo $(fc -ln -1)'
alias unlock_db='sudo rm /var/lib/pacman/db.lck'
alias fix_gpgme='sudo rm -R /var/lib/pacman/sync'
alias update_mirrors='sudo reflector --sort rate -l 10 --save /etc/pacman.d/mirrorlist'
alias rman='rusty-man'
alias gtvpn='sudo openconnect --protocol=gp --csd-wrapper=/usr/lib/openconnect/hipreport.sh vpn.gatech.edu'
alias clippy='cargo clippy -- -W clippy::all -W clippy::pedantic -W clippy::nursery -W clippy::correctness -W clippy::style -W clippy::perf -W clippy::complexity'
alias screenshot='grimshot'
alias jbfix='wmname LG3D'

fpath+=~/.zfunc

#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#  [[ -f ~/.bashrc ]] && . ~/.bashrc
#  dbus-run-session startplasma-wayland
#  # wname LG3D
#fi
