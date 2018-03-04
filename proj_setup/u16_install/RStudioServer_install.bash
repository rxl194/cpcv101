#!/bin/bash

sudo apt-get install gdebi-core

#wget https://download2.rstudio.org/rstudio-server-1.1.423-amd64.deb
cp /mnt/gcs-bucket/gae-persist/rstudio-server-1.1.423-amd64.deb .

sudo gdebi rstudio-server-1.1.423-amd64.deb
sudo apt-get install -f
