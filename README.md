# My dotfiles
The programs I use for these dotfiles:
- [Terminator](https://gnome-terminator.org/)
- [fish](https://github.com/fish-shell/fish-shell)
- [fisher](https://github.com/jorgebucaran/fisher)
- [Git](https://git-scm.com/) (obviously)
- [Helix](https://helix-editor.com/)
- [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [Bat](https://github.com/sharkdp/bat)
- [Zoxide](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation)
- [fzf](https://github.com/junegunn/fzf#installation)
- [Taplo](https://rust-lang.org/)
- [Rust](https://rust-lang.org/)
- [Eza](https://github.com/eza-community/eza)
- [Starship](https://starship.rs/installing/)
- The plugins
    - [fisher](https://github.com/jorgebucaran/fisher)
    - [plugin-git](https://github.com/jhillyerd/plugin-git)
    - [last-working-dir-fish-pkg](https://github.com/kfkonrad/last-working-dir-fish-pkg)
    - [fish-helix](https://github.com/munhammer/fish-helix)[^1]
[^1]: Using my fork because the other one isn't compatible with more modern fish versions


## How to set up the dotfiles
1. Make sure you have all of the above programs
2. Clone the repo to the right place
```zsh
  git clone git@github.com:MunHammer/My-dotfiles.git ~/.dotfiles
```
3. Edit the git/.gitconfig file, because I **don't** want people impersonating me
4. Install stow
5. Put the files in the right place
```zsh
  stow zsh
  stow terminator
  stow helix
  stow git
  stow fastfetch
```
## Example installation
```bash
  sudo add-apt-repository ppa:maveonair/helix-editor
  echo 'deb http://download.opensuse.org/repositories/shells:/fish/Debian_13/ /' | sudo tee /etc/apt/sources.list.d/shells:fish.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish/Debian_13/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish.gpg > /dev/null
  sudo apt update
  sudo apt install fish git terminator fastfetch helix stow bat fzf
  # This one is optional, but I recommend it, because I have aliases for rust
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  # The site https://rust-lang.org/tools/install/
  # I used cargo to install zoxide
  cargo install zoxide
  # starship, the prompt engine
  cargo install starship --locked
  exec fish
```
```fish
  # install fisher
  curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
  fisher update
  # clone this repo
  git clone https://github.com/MunHammer/My-dotfiles.git ~/.dotfiles
  cd ~/.dotfiles
  # a cheap, but easy way to override the pre-existing dotfiles
  stow fish terminator helix git fastfetch --adopt *
  git restore .
  stow zsh terminator helix git fastfetch --adopt *
  # reload & make sure everything works well
  exec fish
```
