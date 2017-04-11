#!/bin/bash

# // INSTALL gcloud gcsfuse
#  $ sudo gcloud init
export GCSFUSE_REPO=gcsfuse-`lsb_release -c -s`
echo "deb http://packages.cloud.google.com/apt $GCSFUSE_REPO main" | sudo tee /etc/apt/sources.list.d/gcsfuse.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y gcsfuse

# // Mount 
sudo mkdir -p  /mnt/gcs-bucket/
sudo chmod a+rwx /mnt/gcs-bucket/
gcsfuse fp.yelpista.com /mnt/gcs-bucket/
