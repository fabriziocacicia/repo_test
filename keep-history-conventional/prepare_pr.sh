#!/bin/sh

while getopts b: flag
do
    case "${flag}" in
        f) NEW_BRANCH_NAME=${OPTARG};;
    esac
done

if [ -z "$NEW_BRANCH_NAME" ]; then
    echo "Missing new branch name. Exiting..."
    exit
fi

cd "${GITHUB_WORKSPACE}"

git config --global --add safe.directory /github/workspace
#git config --global user.email "keep-history-conventional-action[bot]@users.noreply.github.com"
#git config --global user.name "Keep History Conventional Action"

git fetch --all
git checkout -b $NEW_BRANCH_NAME
git add --all
git push --set-upstream origin $NEW_BRANCH_NAME

