FROM nvidia/cuda:9.2-base

COPY root /

RUN adduser --system --disabled-password --no-create-home --home /xmrig-nvidia xmrig && \
    apt-get update && \
    apt-get install -y --no-install-recommends libmicrohttpd10 libssl1.1 libuv1 && \
    rm -rf /var/cache/apk/*

USER xmrig

WORKDIR /xmrig-nvidia

ENTRYPOINT [ "./xmrig-nvidia" ]
CMD [ "--help" ]
