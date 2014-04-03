ZSH_THEME_GIT_PROMPT_PREFIX="─(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%(?.%{$fg[green]%}.%{$fg[red]%}))"
ZSH_THEME_GIT_PROMPT_DIRTY="±"

RPROMPT=$'%E%{$fg[magenta]%}%~%{$reset_color%}'
PROMPT="%(?.%{$fg[green]%}.%{$fg[red]%})$(git_prompt_info)─╼%{$reset_color%} "
