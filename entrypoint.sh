#!/bin/sh -l

# first argument is the sub-directory (defaults to ./)
# second argument is the platform for the lime build (defaults to html5)
# third argument is build args to the build call
# forth argument is a | separated list of git dependencies for haxelib to install

set -e

echo "ls -la /var/haxelib"
ls -la /var/haxelib

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
echo "attempt to parse git dependencies: $4"
set -f
IFS='|'
gitDependencyArray=($4)
for i in "${!gitDependencyArray[@]}"; do 
	gitDep=${gitDependencyArray[$i]}
	# check if the dep is empty or not
	if [ -z "$gitDep" ]
	then
	    # do nothing since it is empty
	else
	    echo "haxelib git $gitDep"
    	haxelib git $gitDep
	fi
done
echo "done parsing git dependencies"
set -e

echo "haxelib install all"
yes y | haxelib install all

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