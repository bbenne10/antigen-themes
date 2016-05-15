ZSH_THEME_GIT_PROMPT_PREFIX="─(%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%(?.%{$fg[green]%}.%{$fg[red]%}))"
ZSH_THEME_GIT_PROMPT_DIRTY="±"

function pyenv_prompt_info() {
  local ver=$(pyenv version-name)
  if [ -n "$ver" -a "$ver" != 'system' ]; then
    echo "($ver)"
  fi
}

RPROMPT=$'\$(pyenv_prompt_info) %E%{$fg[magenta]%}%~%{$reset_color%}'
PROMPT="%(?.%{$fg[green]%}.%{$fg[red]%})\$(git_prompt_info)─→%{$reset_color%} "
