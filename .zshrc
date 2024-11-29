# Created by newuser for 5.9

SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:git:*' formats ' %b'
setopt PROMPT_SUBST
# RPROMPT='${vcs_info_msg_0_}'
# PROMPT='${vcs_info_msg_0_}%# '
PROMPT=$'\n'"%B%F{45}%1~%f%b"
PROMPT+='%B%F{green}${vcs_info_msg_0_}%f%b '
PROMPT+='%F{46}$%f%b '

alias grep="grep --color=auto"
alias ls="ls --color=auto"
export EDITOR=nvim

export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=1

autoload -Uz compinit
compinit
