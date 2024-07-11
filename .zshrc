# Created by newuser for 5.9

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'
# PROMPT='${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '%b'

PROMPT=$'\n'"%B%F{45}%1~ %B%F{46}$ %F{15}"

alias grep="grep --color=auto"
alias ls="ls --color=auto"
