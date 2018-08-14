#!/bin/bash -e

# build the snap
snapcraft cleanbuild --target-arch=armhf

# open up the snap
unsquashfs hello-world-go-snap_*_armhf.snap

# check file type of the compiled executable
if [ $(file squashfs-root/bin/hello-world) ~= ARM ]; then
    echo "success! file is compiled for ARM"
fi