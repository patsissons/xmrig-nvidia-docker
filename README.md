# xmrig-nvidia docker container

This container allows running [xmrig-nvidia](https://github.com/xmrig/xmrig-nvidia) in a docker container. You need to have already installed [nvidia-docker]() to enable passthru on the nvidia card(s). Run the docker container with `--runtime=nvidia` to enable the passthrough.

## Example

```
docker run --runtime=nvidia -it patsissons/xmrig-nvidia -o ca.minexmr.com:5555 --donate-level 1 -u 47NHecs6qjvDcbx3eW6cDGDwdm3gDqbHs7G8hzPYRxf3YRTcDJw8kXhDxfHinsjHUwVwdFusSn76UHkaz68KurUgHvFmPMH.github -p x -k
```

## Building

A [Dockerfile](https://github.com/patsissons/xmrig-nvidia-docker/blob/master/build/Dockerfile) is also included for [building](https://github.com/patsissons/xmrig-nvidia-docker/tree/master/build) the `xmrig-nvidia` app.

## Donations

If you find this docker image useful, donations for work on dockerizing the build and mining app are appreciated at any of the folllowing addresses:

* BTC: `1LNY9wSPs913Y9jXMTrrVze1E41nhm6Qv7`
* LTC: `LhnwdbrnQaQbjDkqxXFmxXGPcFhMBA9gFu`
* ETH: `a05c67acbec8afc30287704540b215284a7c21a9`
* XMR: `47NHecs6qjvDcbx3eW6cDGDwdm3gDqbHs7G8hzPYRxf3YRTcDJw8kXhDxfHinsjHUwVwdFusSn76UHkaz68KurUgHvFmPMH`
* XRP: `rG9vAB1rbgDW3Ds7HFqJeF9Pi4fGRbEs93`

