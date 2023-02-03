##################################################################
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.zshrc
rustup default nightly

cargo install cargo-binstall

cargo binstall --no-confirm \
  bat bottom zellij just trunk flamegraph broot \
  cargo-update cargo-expand cargo-watch cargo-asm \
  cargo-audit cargo-udeps cargo-criterion cargo-binutils \
  cargo-outdated

#################################################################
# Dotfiles
# neovim
mv ~/.config/nvim/ ~/.config/nvim.bak > /dev/null 2>&1
stow nvim

# zsh and gitconfig
mv ~/.zshrc ~/.zshrc.bak > /dev/null 2>&1
mv ~/.gitconfig ~/.gitconfig.bak /dev/null 2>&1
stow env

#################################################################
# Nix
#sudo sh <(curl -L https://nixos.org/nix/install) --daemon

