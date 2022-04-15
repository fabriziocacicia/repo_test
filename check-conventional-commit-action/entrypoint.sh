#!/bin/sh -l
sh -c "npx commitlint -h"
sh -c "echo HEAD"
sh -c "echo $HEAD"
sh -c "npx commitlint --from HEAD~1 --to HEAD --verbose"
