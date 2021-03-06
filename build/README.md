# Building xmrig-nvidia

The build process uses docker. We start a new container using the `devel` cuda image, install some build dependencies, build the app, and finally distribute the app to the configured dist path (default is `/xmrig-nvidia`). This process can automatically update the pre-compiled binary that is injected into the standard `patsissons/xmrig-nvidia` image.

## Example

```bash
# checkout current release
git checkout 10.0-devel
git pull

# build the xmrig-nvidia development container image and generate the binaries
docker pull nvidia/cuda:10.0-devel
docker build -t patsissons/xmrig-nvidia:10.0-build build
docker run --rm -v $PWD/root/xmrig-nvidia:/xmrig-nvidia patsissons/xmrig-nvidia:10.0-build
docker push patsissons/xmrig-nvidia:10.0-build

# build the xmrig-nvidia runtime container image
docker pull nvidia/cuda:10.0-base
docker build -t patsissons/xmrig-nvidia:10.0-devel .

# publish devel release
git add -A
git push --force-with-lease origin 10.0-devel

# tag releases
docker tag patsissons/xmrig-nvidia:10.0-devel patsissons/xmrig-nvidia:10.0
docker tag patsissons/xmrig-nvidia:10.0 patsissons/xmrig-nvidia:develop
docker tag patsissons/xmrig-nvidia:10.0 patsissons/xmrig-nvidia:latest

# publish release
git branch -f develop 10.0-devel
git push --force-with-lease origin develop
git branch -f 10.0 10.0-devel
git push --force-with-lease origin 10.0
git branch -f master 10.0
git push --force-with-lease origin master
```

## Environment

You can adjust the following docker environment variables to customize the build process.

- `REPO_URI`: use a custom git repo for `xmrig-nvidia` (default is `https://github.com/xmrig/xmrig-nvidia.git`)
- `DIST_PATH`: use a custom dist path (default is `/xmrig-nvidia`)

## Development Notes

If you want to play around with the development environment, simply run the container with a shell command. All scripts related to the build process are located in `/scripts`.

```bash
docker run --rm -it patsissons/xmrig-nvidia:build /bin/bash
```
