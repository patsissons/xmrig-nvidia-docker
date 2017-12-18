FROM nvidia/cuda:9.0-devel

ENV DEBIAN_FRONTEND noninteractive

#RUN adduser -S -D -H -h /xmrig-nvidia miner

#RUN apt-get update

#RUN apt-get install -y --no-install-recommends ca-certificates git build-essential cmake libuv1-dev libmicrohttpd-dev

#RUN apt-get install -y --no-install-recommends nvidia-cuda-dev
#RUN apt-get install -y --no-install-recommends nvidia-cuda-toolkit

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates git build-essential cmake libuv1-dev libmicrohttpd-dev && \
    git clone https://github.com/xmrig/xmrig-nvidia.git && \
    cd xmrig-nvidia && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make

#ENTRYPOINT /app/xmrig-nvidia
#CMD [ "--help" ]

