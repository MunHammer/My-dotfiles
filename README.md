# My dotfiles
The programs I use for these dotfiles:
- [Terminator](https://gnome-terminator.org/)
- [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Oh-My-Zsh](https://ohmyz.sh/)
- [Git](https://git-scm.com/) (obviously)
- [Helix](https://helix-editor.com/)
- [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [Bat](https://github.com/sharkdp/bat)
- [Zoxide](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation)
- [fzf](https://github.com/junegunn/fzf#installation)
- [Taplo](https://rust-lang.org/)
- [Rust](https://rust-lang.org/)
- [Starship]https://starship.rs/installing/()
- The plugins
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [zsh-bat](https://github.com/fdellwing/zsh-bat)
    - [you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)


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
  sudo apt install zsh git terminator fastfetch helix stow bat fzf
  # This one is optional, but I recommend it, because I have aliases for rust
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  # The site https://rust-lang.org/tools/install/
  # I used cargo to install zoxide
  cargo install zoxide
  # starship, the prompt engine
  cargo install starship --locked
  # follow the prompts, disregard the config
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  # install the plugins
  # syntax highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  # you-should-use
  git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
  # autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  # bat
  git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat
  # clone this repo
  git clone https://github.com/MunHammer/My-dotfiles.git ~/.dotfiles
  rm ~/.zshrc ~/.gitconfig ~/.config/terminator/config ~/.config/helix/config.toml ~/.config/helix/languages.toml
  cd ~/.dotfiles
  stow zsh terminator helix git fastfetch
  # Reload the terminal so everything activates
  source ~/.zshrc
```
