#!/bin/bash
eval `ssh-agent -s`
ssh-add $HOME/custom/git

GIT_REPO_URL='git@github.com:niranjanshr13/android-termux'

REMOTE_REPO_HEAD=$(git ls-remote $GIT_REPO_URL HEAD | awk {'print $1'})
GIT_REPO_PATH=$HOME/android-termux
LOCAL_REPO_HEAD=$(git ls-remote $GIT_REPO_PATH HEAD | head -1 | awk {'print $1'})

if [[ $REMOTE_REPO_HEAD != $LOCAL_REPO_HEAD ]]
then

# refresh the git repo.
rm -rf $GIT_REPO_PATH
git clone $GIT_REPO_URL $GIT_REPO_PATH

fi