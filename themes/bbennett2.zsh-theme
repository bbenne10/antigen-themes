ZSH_THEME_GIT_PROMPT_PREFIX="─(%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%(?.%{$fg[green]%}.%{$fg[red]%}))"
ZSH_THEME_GIT_PROMPT_DIRTY="±"

function pyenv_prompt_info() {
  local ver=$(pyenv version-name)
  if [ -n "$ver" -a "$ver" != 'system' ]; then
    echo "($ver)"
  fi
}

function git_prompt_info() {

  # original version of this didn't seem to work on OpenBSD. This should have
  # the same functionality as upstream where it works, but also works on my
  # OpenBSD install.

  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || ref=$(command git rev-parse --short HEAD 2> /dev/null)

    if [ -z "$ref" ]; then
      return 0
    fi

    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

RPROMPT=$'\$(pyenv_prompt_info) %E%{$fg[magenta]%}%~%{$reset_color%}'
PROMPT="%(!.%{$fg[blue]%}(root).)%(?.%{$fg[green]%}.%{$fg[red]%})\$(git_prompt_info)─→%{$reset_color%} "
