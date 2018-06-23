FROM nvidia/cuda:9.0-devel

ENV DEBIAN_FRONTEND=noninteractive \
    REPO_URI=https://github.com/xmrig/xmrig-nvidia.git \
    DIST_PATH=/xmrig-nvidia

COPY root /

WORKDIR /build

CMD [ "/bin/bash", "/scripts/all.sh" ]
