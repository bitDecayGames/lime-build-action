#!/bin/bash

# See `action.yml` for information on arguments

set -e

echo "GITHUB_WORKSPACE=${GITHUB_WORKSPACE}"

echo "cd ${GITHUB_WORKSPACE}/$1"
cd ${GITHUB_WORKSPACE}/$1

set +e
echo "Running initialization script: $4"
chmod +x $4
bash -c $4
echo "Finished initialization"
set -e

echo "All Versions:"
echo -n "Haxe: " && haxe --version
haxelib list

echo "lime build $2 $3"
lime build $2 $3

echo "cd export"
cd export

echo "zip -r -y ${2}.zip ${2}"
zip -r -y ${2}.zip ${2}

echo "Done"