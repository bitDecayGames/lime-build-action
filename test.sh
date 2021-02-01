# useful for testing locally / use as a reference command
set -x
docker run -e GITHUB_WORKSPACE='github' -v $1:/github/testrepo --rm bitdecaygames/lime-build-action:latest testrepo html5 "-final" "./init.sh"