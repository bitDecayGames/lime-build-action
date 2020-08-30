#!/bin/sh -l

echo "Hello ( $1 , $dir ) ( $2 , $platform )"

set -e

if [[ -z "$GITHUB_WORKSPACE" ]]; then
  echo "Set the GITHUB_WORKSPACE env variable."
  exit 1
fi

# if [[ -z "$GITHUB_REPOSITORY" ]]; then
#   echo "Set the GITHUB_REPOSITORY env variable."
#   exit 1
# fi


#echo " - ls -la ~/haxelib"
#ls -la /var/haxelib
# not sure why it is having me do this agian, but it is
#echo " - haxelib setup ~/haxelib"
#haxelib setup /var/haxelib
#echo " - haxelib version"
haxelib version
#echo " - haxelib path lime"
#haxelib path lime
#echo " - lime --version"
lime --version

echo "cd ${GITHUB_WORKSPACE}/$1"
cd ${GITHUB_WORKSPACE}/$1

echo "ls -la"
ls -la

echo "lime build $2"
lime build $2

echo "cd export"
cd export

echo "zip -j ${2}.zip $2 > /dev/null"
zip -j ${2}.zip $2 > /dev/null
