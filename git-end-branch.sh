#!/usr/bin/env bash

BRANCH=$1
MAIN="main"

echo $BRANCH

git checkout $MAIN
git pull
# TODO: add binary toggle for no-ff default false
git merge $BRANCH
git push

git checkout $MAIN
git branch -D $BRANCH
git push --delete origin $BRANCH
git remote prune origin
