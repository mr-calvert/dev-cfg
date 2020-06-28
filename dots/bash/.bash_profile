set -o vi
 [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ -f ~/.git_prompt ]; then
  source ~/.git_prompt
fi
PATH=/usr/local/opt/python/libexec/bin:$PATH
