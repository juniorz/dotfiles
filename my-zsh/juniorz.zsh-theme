ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="] "

PROMPT='$(git_dirty_switch %{$fg[red]%} %{$fg[green]%})$(git_prompt_info)%{$reset_color%}%3~ %# '
