Parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[0;38m\]\u \[\033[1;30m\]\D{%F %T}
 \[\033[0;32m\]\$(~/.rvm/bin/rvm-prompt) \[\033[0;33m\]\$(python3 --version) \[\033[0;36m\]node-\$(node --version) \[\033[0;35m\]\w
 \[\033[0;31m\]\$(Parse_git_branch)\[\033[00m\] $ "
