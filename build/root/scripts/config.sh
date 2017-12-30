#!/bin/bash

. $(dirname $0)/checkroot.sh

apt-get update

apt-get install -y --no-install-recommends ca-certificates git build-essential cmake libuv1-dev libmicrohttpd-dev

