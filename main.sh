#! /bin/bash

# add debs to repo
ssh ferreo@direct.pika-os.com 'aptly repo remove pikauwu-main '"'Name (% libwebrtc-audio-processing-dev)'"' '
ssh ferreo@direct.pika-os.com 'aptly repo remove pikauwu-main '"'Name (% libwebrtc-audio-processing1)'"' '
# publish the repo
ssh ferreo@direct.pika-os.com 'aptly publish update -batch -skip-contents -force-overwrite pikauwu filesystem:pikarepo:'
