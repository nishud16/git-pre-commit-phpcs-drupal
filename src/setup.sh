#!/bin/sh

cat ./vendor/nishud16/git-pre-commit-phpcs-drupal/src/pre-commit .git/hooks/pre-commit
if [ -e .git/hooks/pre-commit ];
then
    PRE_COMMIT_EXISTS=1
    echo "Pre-commit git hook is updated!"
else
    PRE_COMMIT_EXISTS=0
    chmod +x .git/hooks/pre-commit
    echo "Pre-commit git hook is installed!"
fi