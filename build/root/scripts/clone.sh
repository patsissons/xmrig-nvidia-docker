#!/bin/bash

if [ -d xmrig-nvidia/.git ]; then
  git -C xmrig-nvidia pull
else
  git clone $REPO_URI xmrig-nvidia
  git -C xmrig-nvidia apply ../donate-level.patch
fi

