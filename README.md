# lime-build-action
Github action to build a haxe project with lime

## Usage
```
uses: actions/lime-build-action@v1
with:
  dir: './subdir/haxeproject/'
  platform: 'html5'
```

## This Repo

- `test.sh` provides an easy way to try this locally
  - Takes local path to repo to test as argument
- `build.sh` helper script to run docker command to build image locally

## Pushing updates

- Usage of this repo is based on tags
- Use the `next` script to create and push a new tag once it is functioning as desired