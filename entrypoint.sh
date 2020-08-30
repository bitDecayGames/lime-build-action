#!/bin/sh -l

echo "Hello $1 $2"

# not sure why it is having me do this agian, but it is
echo "haxelib setup ~/haxelib"
haxelib setup ~/haxelib
echo "haxelib version"
haxelib version
echo "lime --version"
lime --version