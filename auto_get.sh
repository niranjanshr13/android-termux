GIT_REPO_URL='https://github.com/niranjanshr13/home-automation-tasker-helper'
REMOTE_REPO_HEAD=$(git ls-remote $GIT_REPO_URL HEAD | awk {'print $1'})
GIT_REPO_PATH='/data/data/com.termux/files/home/storage/shared/.automation/home-automation-tasker-helper'
LOCAL_REPO_HEAD=$(git ls-remote $GIT_REPO_PATH HEAD | head -1 | awk {'print $1'})

if [[ $REMOTE_REPO_HEAD != $LOCAL_REPO_HEAD ]]
then

# refresh the git repo.
rm -rf $GIT_REPO_PATH
git clone $GIT_REPO_URL $GIT_REPO_PATH

# ssh config

# setup bashrc

fi