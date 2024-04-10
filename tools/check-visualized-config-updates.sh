#!/bin/bash
# Run this script at the root of the repository to check if any precice-config.dot needs to be updated.
# Requires that precice-config.dot files have already been checked into the repository and that
# visualize-configs.sh has been executed, e.g., in a CI job.

set -e -u

echo "Checking for any config visualizations that need to be updated..."

if git status | grep precice-config.dot; then
  echo "There have been changes. Run ./tools/visualize-configs.sh to update the config visualizations."
  exit 1
else
  echo "All visualizations seem to be up to date."
fi

