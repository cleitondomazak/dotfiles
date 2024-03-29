#!/bin/sh
if which hub >/dev/null 2>&1; then
	alias git='hub'
fi

alias gl='git pull --prune'
alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias glga="glg --all"

alias gpa='git push origin --all'
alias gd='git diff'
alias gc='git checkout'
alias gcam='git add -A -m'
alias gb='git branch -v'
alias gcam='git commit -a -m'
alias gs='git status -sb'
alias gcl='git clone'
alias gcb='git-copy-branch-name'
alias gpr='gp && git pr'

gi() {
	curl -s "https://www.gitignore.io/api/$*"
}
