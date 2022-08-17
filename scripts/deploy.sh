#!/bin/bash

VERSION=$(node -pe "require('./package.json').version")
SHA=$(git rev-parse --short HEAD)

git branch --delete --force gh-pages
git checkout -b gh-pages
git add -f dist
git commit -m "Deploying $VERSION+$SHA"
git push -f origin gh-pages
git checkout -