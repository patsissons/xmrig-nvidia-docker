# Building xmrig-nvidia

The build process uses docker. We start a new container using the `devel` cuda image, install some build dependencies, build the app, and finally distribute the app to the configured dist path (default is `/xmrig-nvidia`). This process can automatically update the pre-compiled binary that is injected into the standard `patsissons/xmrig-nvidia` image.

## Example

```bash
# checkout current release
git checkout 9.1-devel
git pull

# build the xmrig-nvidia development container image and generate the binaries
docker pull nvidia/cuda:9.1-devel
docker build -t patsissons/xmrig-nvidia:9.1-build build
docker run --rm -v $PWD/root/xmrig-nvidia:/xmrig-nvidia patsissons/xmrig-nvidia:9.1-build
docker push patsissons/xmrig-nvidia:9.1-build

# build the xmrig-nvidia runtime container image
docker pull nvidia/cuda:9.1-base
docker build -t patsissons/xmrig-nvidia:9.1-devel .

# publish devel release
git add -A
git push --force-with-lease origin 9.1-devel

# tag releases
docker tag patsissons/xmrig-nvidia:9.1-devel patsissons/xmrig-nvidia:9.1

# publish release
git branch -f 9.1 9.1-devel
git push --force-with-lease origin 9.1
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
