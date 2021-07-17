#!/bin/sh

read -p "Repository name : " repo
read -p "Add file?       : " addfile
echo -e "# $repo" >> README.md
git init
git add $addfile
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ijulhaxor/$repo.git
git push -u origin main
