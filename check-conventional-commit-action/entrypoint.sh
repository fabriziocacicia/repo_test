#!/bin/sh -l

echo HEAD
echo $HEAD

npx commitlint --from HEAD~1 --to HEAD --verbose
