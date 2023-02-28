alias listFiles="ls -laF"
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
alias weather="curl wttr.in/chicago"
alias clearNpmCache="rm -rf node_modules/ && npm cache clean -f"
alias countFiles="ls -l | wc -l"
alias setupTabs="itermocil presentation && itermocil journey && itermocil covid && itermocil metrics && exit"
