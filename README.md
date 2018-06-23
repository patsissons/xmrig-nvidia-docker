# xmrig-nvidia docker container

[![Docker Stars](https://img.shields.io/docker/stars/patsissons/xmrig-nvidia.svg)](https://hub.docker.com/r/patsissons/xmrig-nvidia/) [![Docker Pulls](https://img.shields.io/docker/pulls/patsissons/xmrig-nvidia.svg)](https://hub.docker.com/r/patsissons/xmrig-nvidia/) [![Docker Build Status](https://img.shields.io/docker/build/patsissons/xmrig-nvidia.svg)](https://hub.docker.com/r/patsissons/xmrig-nvidia/)

This container allows running [xmrig-nvidia](https://github.com/xmrig/xmrig-nvidia) in a docker container. You need to have already installed [nvidia-docker](https://github.com/NVIDIA/nvidia-docker) to enable passthru on the nvidia card(s). You will also need to have the [`cuda-drivers`](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64) installed. Run the docker container with `--runtime=nvidia` to enable the passthrough.

### Tags

CUDA driver versions correspond to the following tags

* [9.2](https://github.com/patsissons/xmrig-nvidia-docker/tree/9.2) ([latest](https://github.com/patsissons/xmrig-nvidia-docker/tree/master))
* [9.1](https://github.com/patsissons/xmrig-nvidia-docker/tree/9.1)
* [9.0](https://github.com/patsissons/xmrig-nvidia-docker/tree/9.1)

### CUDA drivers

Installing cuda drivers on [ubuntu 16.04](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1604&target_type=debnetwork) is the easiest way to get things going. You can install the drivers with `apt-get install --no-install-recommends cuda-drivers`. Make sure to reboot after installing new drivers.

If you have an NVIDIA graphics card in your docker host, you can leverage this card to provide additional hashing power. `xmrig-nvidia` can be used in parallel with the cpu miner.

## Docker

This docker image in available on [docker hub](https://hub.docker.com/r/patsissons/xmrig-nvidia/).

This image uses the official [`nvidia/cuda:9.2-base`](https://hub.docker.com/r/nvidia/cuda/) image for the base, so we always have the latest nvidia cuda infrastructure in place.

## Example

```bash
# run a dockerized miner
# -o and all following arguments are passed to the xmrig-nvidia miner process
docker run --runtime=nvidia -it -d --name xmrig-nvidia patsissons/xmrig-nvidia -o ca.minexmr.com:5555 --donate-level 1 -u 47NHecs6qjvDcbx3eW6cDGDwdm3gDqbHs7G8hzPYRxf3YRTcDJw8kXhDxfHinsjHUwVwdFusSn76UHkaz68KurUgHvFmPMH.github -p x -k
```

## Compatibility

Currently `nvidia-docker` only works in linux, this may change as `nvidia-docker` evolves. This means that this container works best on a bare metal docker host or a linux based virtual machine docker host (I think `VT-d` is necessary for a virtual machine docker host).

## Building

A [Dockerfile](https://github.com/patsissons/xmrig-nvidia-docker/blob/master/build/Dockerfile) is also included for [building](https://github.com/patsissons/xmrig-nvidia-docker/tree/master/build) the `xmrig-nvidia` app. See the [README](https://github.com/patsissons/xmrig-nvidia-docker/tree/master/build/README.md) for more detailed instructions on how to build the runtime container.

## Donations

If you find this docker image useful, donations for work on dockerizing the build and mining app are appreciated at any of the folllowing addresses:

* BTC: `1LNY9wSPs913Y9jXMTrrVze1E41nhm6Qv7`
* LTC: `LhnwdbrnQaQbjDkqxXFmxXGPcFhMBA9gFu`
* ETH: `a05c67acbec8afc30287704540b215284a7c21a9`
* XMR: `47NHecs6qjvDcbx3eW6cDGDwdm3gDqbHs7G8hzPYRxf3YRTcDJw8kXhDxfHinsjHUwVwdFusSn76UHkaz68KurUgHvFmPMH`
* XRP: `rG9vAB1rbgDW3Ds7HFqJeF9Pi4fGRbEs93`
