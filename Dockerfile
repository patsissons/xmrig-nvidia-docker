FROM nvidia/cuda:9.1-base

COPY root /

RUN adduser --system --disabled-password --no-create-home --home /xmrig-nvidia miner && \
    apt-get update && \
    apt-get install -y --no-install-recommends libuv1 libmicrohttpd10

USER miner

WORKDIR /xmrig-nvidia

ENTRYPOINT [ "./xmrig-nvidia" ]
CMD [ "--help" ]

