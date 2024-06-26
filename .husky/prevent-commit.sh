#!/bin/sh
branch_name=$(git symbolic-ref --short HEAD)
if [[ "$branch_name" != feature* ]] && [[ "$branch_name" != test* ]]; then
  echo "Commits are only allowed on feature and test branches. Current branch: $branch_name"
  exit 1
fi
