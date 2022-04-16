#!/bin/sh

cd "${GITHUB_WORKSPACE}"

git config --global --add safe.directory /github/workspace
git config --global user.email "keep-history-conventional-action[bot]@users.noreply.github.com"
git config --global user.name "Keep History Conventional Action"

#LATEST_COMMIT_HASH=$(git rev-parse HEAD)
LATEST_COMMIT_HASH=$(git log -1 --format=%h)
NEW_BRANCH_NAME="keep_history_conventional/$LATEST_COMMIT_HASH"

COMMIT_MESSAGE=$(git log -1 --format=%B)

git fetch --all
git status
git checkout -b $NEW_BRANCH_NAME
git add --all
git status
git commit -a -m "$COMMIT_MESSAGE"
#git push --set-upstream origin $NEW_BRANCH_NAME
