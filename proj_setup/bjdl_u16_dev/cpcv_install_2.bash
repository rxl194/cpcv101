#!/bin/bash

# // Install gcloud sdk
# $ wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-151.0.1-linux-x86_64.tar.gz
# $ tar zxvf google-cloud-sdk-151.0.1-linux-x86_64.tar.gz
# $ mv google-cloud-sdk ~
# $ ~/google-cloud-sdk/install.sh

# // options: --no-launch-browser
# $ gcloud init
# $ gcloud auth login
# $ gcloud auth application-default login

# // INSTALL gcloud gcsfuse
export GCSFUSE_REPO=gcsfuse-`lsb_release -c -s`
echo "deb http://packages.cloud.google.com/apt $GCSFUSE_REPO main" | sudo tee /etc/apt/sources.list.d/gcsfuse.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y gcsfuse

# // Mount 
sudo mkdir -p  /mnt/gcs-bucket/
sudo chmod a+rwx /mnt/gcs-bucket/
gcsfuse fp.yelpista.com /mnt/gcs-bucket/
