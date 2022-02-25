#!/bin/sh

echo "Updating Git configuration"
git config --global user.name "Jonathan Lobaugh"
git config --global core.editor $(which vim)
git config --global push.default current

# tooling function
git config --global alias.branch-name "!git rev-parse --abbrev-ref HEAD"

# quick renames
git config --global alias.a "add"
git config --global alias.ac "!git add . && git commit -am"
git config --global alias.c "commit --verbose"
git config --global alias.ca "commit -a --verbose"
git config --global alias.cm "commit -m"
git config --global alias.cam "commit -a -m"
git config --global alias.m "commit --amend --verbose"

git config --global alias.d "diff"
git config --global alias.ds "diff --stat"
git config --global alias.dc "diff --cached"

git config --global alias.st "status"
git config --global alias.co "checkout"
git config --global alias.cob "checkout -b"

# one-line logging
git config --global alias.l "log --decorate --date=short --pretty=format:'%C(yellow)%h %C(green)%ad%C(red)%d %Creset%s%C(blue) [%cn]'"
git config --global alias.tree "log --graph --full-history --all --color --date=short --pretty=format:'%C(yellow)%h %C(green)%ad%C(red)%d %Creset%s%C(blue) [%cn]'"

# list branches sorted by last modified
git config --global alias.b "!git for-each-ref --sort=-committerdate --color=always refs/heads --format='%(HEAD) %(color:yellow)%(refname:short)|%(color:green)%(committerdate:relative)|%(color:blue)%(subject)%(color:reset)' | column -t -s '|'"

# purge branch of all changes and match to remote
git config --global alias.p "!git purge"
git config --global alias.purge "!git fetch --all && git reset --hard origin/\$(git branch-name) && git clean -f"

# Push and track the branch to remote
git config --global alias.publish "!git push -u origin \$(git branch-name)"

# Delete the remote version of the current branch
git config --global alias.unpublish "!git push origin :\$(git branch-name)"

# Repo full cleanup
git config --global alias.cleanup "!git remote prune origin && git repack && git prune-packed && git reflog expire --expire=1.month.ago && git gc --aggressive"