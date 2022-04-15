#!/bin/sh -l

cd "${GITHUB_WORKSPACE}"

git config --global --add safe.directory /github/workspace

sh -c "git log"
