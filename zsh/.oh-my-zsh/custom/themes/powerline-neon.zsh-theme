setopt PROMPT_SUBST
function battery() {
  percent=$(upower -i /org/freedesktop/UPower/devices/DisplayDevice | awk '/percentage/ {print $2}')
  echo "${percent}%"

}
function get_cwd() {
  echo "${PWD/$HOME/~}"
}

ZSH_THEME_GIT_PROMPT_PREFIX='%F{196}%K{196}%F{black}  '

ZSH_THEME_GIT_PROMPT_DIRTY=" *"
ZSH_THEME_GIT_PROMPT_ADDED=" +"
ZSH_THEME_GIT_PROMPT_MODIFIED=" /"
ZSH_THEME_GIT_PROMPT_DELETED=" X"
ZSH_THEME_GIT_PROMPT_RENAMED=" >"
ZSH_THEME_GIT_PROMPT_UNMERGED="󰃻"

ZSH_THEME_GIT_PROMPT_SUFFIX='%k%f'
RPS1='$(git_prompt_info)'
PS1='%F{black}%K{226}󱐋 $(battery)  %F{226}%K{10}%F{black}  %n %F{10}%K{45}%F{black} 🗀 $(get_cwd) %k%F{45}%f
%K{200}     %k%F{200}%f '
