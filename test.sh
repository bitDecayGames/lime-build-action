# useful for testing locally / use as a reference command
# example usage: sh test.sh E:\\Eclipse\\github\\haxeflixel-template
set -x
docker run -e GITHUB_WORKSPACE='//github' -v $1:/github/testrepo --rm bitdecaygames/lime-build-action:latest testrepo html5 "-D API_KEY=aBnHxnxZ76wuBWf4anruNe96kjSItG8gCFoYIzY0OmZfDYlol517av6pcvbeDZaFovZbN5a0xuNHKS2lBuJgBQ== -D dev_analytics" "./bin/init_deps.sh"