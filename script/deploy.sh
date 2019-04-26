#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo

# Add changes to git.
git -C public add -A

# Commit changes.
git -C public commit -m "rebuilding site $(date)"

# Push source and build repos.
git -C public push origin master
