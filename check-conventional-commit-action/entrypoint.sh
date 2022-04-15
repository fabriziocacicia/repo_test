#!/bin/sh -l
sh -c "npx commitlint -h"
sh -c "npx commitlint --from HEAD~1 --to HEAD --verbose"
