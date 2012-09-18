# Prefere usar o brew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi
