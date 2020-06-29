set -o vi
 [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ -f ~/.git_prompt ]; then
  source ~/.git_prompt
fi
PATH=/usr/local/opt/python/libexec/bin:$PATH

alias kprod="kubectl config use-context prod1.prod.us-west-2.splunk8s.io"
alias kstage="kubectl config use-context stage1.stage.us-west-2.splunk8s.io"
alias kplay="kubectl config use-context play1.dev.us-west-2.splunk8s.io"
alias kcat="kubectl -n catalog"
