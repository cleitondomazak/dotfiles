#!/bin/sh

echo "Installing iTerm"
[ "$(uname -s)" != "Darwin" ] && exit 0
sed "s;/Users/cleiton.domazak;$HOME;g" \
	"$DOTFILES"/iterm/com.googlecode.iterm2.plist.example >"$DOTFILES"/iterm/com.googlecode.iterm2.plist
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "$DOTFILES/iterm"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true
