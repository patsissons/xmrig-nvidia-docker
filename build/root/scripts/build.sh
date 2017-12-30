#!/bin/bash

mkdir -p xmrig-nvidia/build

pushd xmrig-nvidia/build

cmake ..

make

popd

