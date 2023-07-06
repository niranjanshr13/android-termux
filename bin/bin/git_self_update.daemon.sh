#!/bin/bash

GIT_SSH_PATH="~/custom/git"
GIT_SSH_COMMAND="ssh -i $GIT_SSH_PATH"

GIT_REPO_URL='https://github.com/niranjanshr13/android-termux'

REMOTE_REPO_HEAD=$(git ls-remote $GIT_REPO_URL HEAD | awk {'print $1'})
GIT_REPO_PATH='~/'
LOCAL_REPO_HEAD=$(git ls-remote $GIT_REPO_PATH HEAD | head -1 | awk {'print $1'})

if [[ $REMOTE_REPO_HEAD != $LOCAL_REPO_HEAD ]]
then

# refresh the git repo.
rm -rf $GIT_REPO_PATH
git clone $GIT_REPO_URL $GIT_REPO_PATH

fi