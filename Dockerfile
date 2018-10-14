FROM nvidia/cuda:10.0-base

COPY root /

RUN adduser --system --disabled-password --no-create-home --home /xmrig-nvidia xmrig && \
    apt-get update && \
    apt-get install -y --no-install-recommends libmicrohttpd12 libssl1.1 libuv1 && \
    rm -rf /var/cache/apk/*

USER xmrig

WORKDIR /xmrig-nvidia

ENTRYPOINT [ "./xmrig-nvidia" ]
CMD [ "--help" ]
