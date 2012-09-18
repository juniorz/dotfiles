git_dirty_switch() {
  local SUBMODULE_SYNTAX=''
  if [[ $POST_1_7_2_GIT -gt 0 ]]; then
        SUBMODULE_SYNTAX="--ignore-submodules=dirty"
  fi
  if [[ -n $(git status -s ${SUBMODULE_SYNTAX}  2> /dev/null) ]]; then
    echo "$1"
  else
    echo "$2"
  fi
}

# Checks if working tree is dirty
parse_git_dirty() {
  echo "$(git_dirty_switch $ZSH_THEME_GIT_PROMPT_DIRTY $ZSH_THEME_GIT_PROMPT_CLEAN)"
}

