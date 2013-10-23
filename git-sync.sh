#!/bin/bash

echo "First need to: git remote add upstream https://github.com/otheruser/repo.git"
git fetch upstream &&
git checkout master &&
git merge upstream/master
