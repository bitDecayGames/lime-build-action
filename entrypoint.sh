#!/bin/sh -l

echo "Hello $1 $2"

echo " - ls -la ~/haxelib"
ls -la ~/haxelib
# not sure why it is having me do this agian, but it is
echo " - haxelib setup ~/haxelib"
haxelib setup ~/haxelib
echo " - haxelib version"
haxelib version
echo " - haxelib path lime"
haxelib path lime
echo " - lime --version"
lime --version