#!/bin/bash

# See `action.yml` for information on arguments

set -e

# echo "ls -la /var/haxelib"
# ls -la /var/haxelib

# not sure why it is having me do this agian, but it is
echo "haxelib setup /var/haxelib"
haxelib setup /var/haxelib
haxelib version
haxelib path lime
lime --version

echo "cd ${GITHUB_WORKSPACE}/$1"
cd ${GITHUB_WORKSPACE}/$1

echo "ls -la"
ls -la

set +e
echo "Running initialization script: $4"
chmod +x $4
bash $4
echo "Finished initialization"
set -e

echo "lime build $2 $3"
lime build $2 $3

echo "cd export"
cd export

echo "ls -la"
ls -la

echo "zip -r -y ${2}.zip ${2}"
zip -r -y ${2}.zip ${2}

echo "ls -la"
ls -la

echo "Done"