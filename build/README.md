# Building xmrig-nvidia

The build process uses docker. We start a new container using the `devel` cuda image, isntall some build dependencies, build the app, and finally distribute the app to the configured dist path (default is `/xmrig-nvidia`). This process can automatically update the pre-compiled binary that is injected into the standard `patsissons/xmrig-nvidia` image.

## Example

```
docker build -t patsissons/xmrig-nvidia:build build
docker run --rm -v $PWD/root/xmrig-nvidia:/xmrig-nvidia patsissons/xmrig-nvidia:build
```

## Development Notes

If you want to play around with the developmetn environment, simply run the container with a shell command. All scripts related to the build process are located in `/scripts`.

```
docker run --rm -it patsissons/xmrig-nvidia:build /bin/bash
```

