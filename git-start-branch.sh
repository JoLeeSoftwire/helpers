#!/usr/bin/env bash

BRANCH=$1

git checkout -b $BRANCH
git push -u origin $BRANCH
