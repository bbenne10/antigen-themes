prompt_bbennett_precmd () {
  vcs_info


  PROMPT="${vcs_info_msg_0_}%(?.%{$fg[green]%}.%{$fg[red]%})❯ %{$reset_color%}"
  RPROMPT=$'%E%{$fg[magenta]%}%~%{$reset_color%}'
}

prompt_bbennett_setup () {
  autoload -Uz vcs_info
  autoload -Uz add-zsh-hook
  autoload -Uz colors
  colors
  export LSCOLORS="Gxfxcxdxbxegedabagacad"

  setopt prompt_subst

  zstyle ':vcs_info:*' enable git
  zstyle ':vcs_info:git*' formats "%b%u% "
  zstyle ':vcs_info:git*' actionformats '%b (%a)'
  zstyle ':vcs_info:git*' unstagedstr '±'

  zstyle ':vcs_info:git:*' check-for-changes true

  prompt_opts=(cr subst percent)
  add-zsh-hook precmd prompt_bbennett_precmd
}

prompt_bbennett_setup "$@"
