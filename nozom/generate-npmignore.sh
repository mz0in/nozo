#!/bin/bash

FILES=$(find packages/pro-plugins/@nocobase -name .npmignore)

if [ "$1" == "ignore-src" ]; then
    CONTENT="/node_modules
/docker
/docs
"
else
    CONTENT="/node_modules
/docker
/docs
/src"
fi

echo $CONTENT

for FILE in $FILES
do
    echo "$CONTENT" > $FILE
done