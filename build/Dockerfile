FROM nvidia/cuda:9.1-devel

ENV DEBIAN_FRONTEND noninteractive
ENV REPO_URI https://github.com/xmrig/xmrig-nvidia.git
ENV DIST_PATH /xmrig-nvidia

COPY root /

WORKDIR /build

CMD [ "/bin/bash", "/scripts/all.sh" ]
