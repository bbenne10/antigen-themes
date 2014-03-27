PROMPT='$(git_prompt_info)%{$fg[green]%}%D{%I:%M %p} %(?..%{$fg[red]%})─╼%{$reset_color%} '
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}[%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}] "
RPROMPT=$'%E%{$fg[magenta]%}%~%{$reset_color%}'
