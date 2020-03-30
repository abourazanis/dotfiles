alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Flush DNS cache
alias flush="sudo killall -HUP mDNSResponder"