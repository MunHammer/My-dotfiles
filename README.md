# My dotfiles
The programs I use for these dotfiles:
- [Terminator](https://gnome-terminator.org/)
- [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Oh-My-Zsh](https://ohmyz.sh/)
- [Git](https://git-scm.com/) (obviously)
- [Helix](https://helix-editor.com/)
- [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- bat
- The plugins
    - [zoxide](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation)
    - [fzf](https://github.com/junegunn/fzf#installation)
    - zsh-autosuggestions
    - zsh-bat
    - you-should-use
    - zsh-syntax-highlighting


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
  sudo apt update
  sudo apt install zsh git terminator fastfetch helix stow
  # This one is optional, but I recommend it, because I have aliases for rust
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  # The site https://rust-lang.org/tools/install/
  # I used cargo to install zoxide
  cargo install zoxide
  # clone this repo
  git clone https://github.com/MunHammer/My-dotfiles.git ~/.dotfiles
  rm ~/.zshrc ~/.gitconfig ~/.config/terminator/config ~/.config/helix/config.toml ~/.config/helix/languages.toml
  cd ~/.dotfiles
  stow zsh terminator helix git fastfetch
  # follow the prompts, use the current config that you have now.
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  # Just in case the things haven't done stuff right
  source ~/.zshrc
```
