#!/bin/sh

brew install antibody
antibody bundle <"$DOTFILES/antibody/bundles.txt" >~/.zsh_plugins.sh
antibody update