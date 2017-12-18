# xmrig-nvidia docker container

This container allows running [xmrig-nvidia](https://github.com/xmrig/xmrig-nvidia) in a docker container. You need to have already installed [nvidia-docker]() to enable passthru on the nvidia card(s). Run the docker container with `--runtime=nvidia` to enable the passthrough.

## Example

```
docker run --runtime=nvidia -it patsissons/xmrig-nvidia -o ca.minexmr.com:5555 --donate-level 1 -u 47NHecs6qjvDcbx3eW6cDGDwdm3gDqbHs7G8hzPYRxf3YRTcDJw8kXhDxfHinsjHUwVwdFusSn76UHkaz68KurUgHvFmPMH.github -p x -k
```

