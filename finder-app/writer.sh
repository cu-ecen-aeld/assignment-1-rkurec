#!/bin/sh
if [ $# -ne 2 ]
then
    echo "Invalid arguments; $0 {path/file} {string}"
    exit 1
else
    writefile=$1    # destination path/file
    writestr=$2     # string to write
    destpath=`dirname $writefile`
    mkdir -p $destpath
    echo "$writestr" > $writefile
    if [ $? -ne 0 ]
    then
        echo "Failed to write \"$writestr\" to $writefile"
        exit 1
    fi
fi