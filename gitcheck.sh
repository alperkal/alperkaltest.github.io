#!/bin/bash

filename=`git diff --name-only HEAD^|head -1`
commitMessage=`git log -1 --pretty=format:%B`

if [[ $filename == assets/img/* ]] && ([[ $filename == *jpg ]] || [[ $filename == *JPG ]]) ; then
    echo "True $commitMessage"
    ./newPost.sh $filename "$commitMessage"
else
    echo "false"
fi