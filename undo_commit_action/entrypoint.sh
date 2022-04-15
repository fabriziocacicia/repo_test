#!/bin/sh -l

cd "${GITHUB_WORKSPACE}"

git config --global --add safe.directory /github/workspace
git reset --hard HEAD~1
git push --force

#sh -c "git log"
