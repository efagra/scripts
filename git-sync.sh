#!/bin/bash

echo "First need to: git remote add upstream https://github.com/otheruser/repo.git" &&
echo "git fetch upstream" &&
git fetch upstream &&
echo "git checkout master" &&
git checkout master &&
echo "git merge upstream/master" &&
git merge upstream/master
