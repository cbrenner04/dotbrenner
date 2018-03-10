# Set the iTerm2 tab to current directory (not full path)
# source: https://gist.github.com/phette23/5270658
# updated with: https://github.com/barryclark/bashstrap/blob/master/.bash_profile#L94
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'
fi

# THIS IS NULLIFIED BY THE ABOVE -- KEEPING FOR DOCUMENTATION PURPOSES
# # Setup tab and window title functions for iterm2
# # iterm behaviour: until window name is explicitly set, it'll always track tab title.
# # So, to have different window and tab titles, iterm_window() must be called
# # first. iterm_both() resets this behaviour and has window track tab title again).
# # Source: http://superuser.com/a/344397
# set_iterm_name() {
#    mode=$1; shift
#  echo -ne "\033]$mode;$@\007"
# }
# iterm_both () { set_iterm_name 0 $@; }
# iterm_tab () { set_iterm_name 1 $@; }
# iterm_window () { set_iterm_name 2 $@; }
