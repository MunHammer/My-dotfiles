# colouring some helpful commands
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# rust
alias rust='cargo run' # compiles & runs my rust project
alias release='cargo run --release' # compiles & runs my rust project for release
alias gcc='gcc -Wall -Wextra -Werror -pedantic' # compiles
alias release-gcc='gcc -O3'
# helpful other things
alias rpi='ssh USER@IP' # sshes into my raspberry pi
alias rm='gio trash' # moves my files into the trash instead of actually deleting them
alias venv='source ~/Programming/PythonProjects/Python-env/bin/activate' # Activates my global python venv
alias neofetch='echo "I do not have neofetch installed, so here is fastfetch"; fastfetch' # replaces neofetch
alias cat="batcat -p --paging=never"
alias fcat="command batcat"
