cd "${GITHUB_WORKSPACE}"

git config --global --add safe.directory /github/workspace

LATEST_COMMIT_HASH=$(git rev-parse HEAD)
LATEST_COMMIT_HASH=$(git log -1 --format=%h)
NEW_BRANCH_NAME="keep_history_conventional/$LATEST_COMMIT_HASH"

COMMIT_MESSAGE=$(git log -1 --format=%B)

git checkout -b $NEW_BRANCH_NAME
git commit -m $COMMIT_MESSAGE
git push --set-upstream origin $NEW_BRANCH_NAME
