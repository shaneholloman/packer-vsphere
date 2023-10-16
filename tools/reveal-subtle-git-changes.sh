#!/bin/bash

# Check for uncommitted changes
if ! git status -s > /dev/null 2>&1; then
  echo "You're not in a git directory. Navigate to a git repo and try again."
  exit 1
fi

# Create a temporary branch
git checkout -b temp-reveal-branch

# Add and commit all changes to temporary branch
git add .
git commit -m "Temporary commit to reveal changes" > /dev/null 2>&1

# Compare with main branch
echo "Comparing with main branch to reveal all types of changes..."
git diff main..temp-reveal-branch

# Return to main and delete temporary branch
git checkout main > /dev/null 2>&1
git branch -D temp-reveal-branch > /dev/null 2>&1

echo "Done. You've seen all there is to see."
