#!/usr/bin/env sh

# abort on errors
set -e

cd `dirname "$0"`/..

# build
npm run docs:build

# navigate into the build output directoryc
cd docs/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:go2sh/cmake-integration-vscode.git master:gh-pages

cd -