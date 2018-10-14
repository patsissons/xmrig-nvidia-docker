#!/bin/bash

. $(dirname $0)/checkroot.sh

apt-get update

apt-get install -y --no-install-recommends build-essential ca-certificates cmake git libmicrohttpd-dev libssl-dev libuv1-dev
