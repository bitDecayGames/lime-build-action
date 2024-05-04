# useful for testing locally / use as a reference command
# example usage: sh test.sh E:\\Eclipse\\github\\haxeflixel-template
set -x
docker run -e GITHUB_WORKSPACE='//github' -v $1:/github/testrepo --rm bitdecaygames/lime-build-action:latest testrepo html5 "-D dev_analytics" "./bin/init_deps.sh"