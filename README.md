# My dotfiles
The programs I use for these dotfiles:
- [Terminator](https://gnome-terminator.org/)
- [zsh]()
- [oh-my-zsh](https://ohmyz.sh/)
- [git](https://git-scm.com/) (obviously)
- [helix](https://helix-editor.com/)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)

## How to set up the dotfiles
1. Make sure you have all of the above programs
2. Clone the repo to the right place
```zsh
  cd ~
  mkdir .dotfiles
  cd .dotfiles
  git clone git@github.com:MunHammer/My-dotfiles.git
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
