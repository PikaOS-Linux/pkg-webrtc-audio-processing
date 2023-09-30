#! /bin/bash

DEBIAN_FRONTEND=noninteractive

# Clone Upstream
git clone https://gitlab.freedesktop.org/pulseaudio/webrtc-audio-processing/ -b v1.3
cp -rvf ./debian ./webrtc-audio-processing/
cd ./webrtc-audio-processing/

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
