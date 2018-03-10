set -o vi
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ -f ~/.git_prompt ]; then
  source ~/.git_prompt
fi
