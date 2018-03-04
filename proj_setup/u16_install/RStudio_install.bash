#!/bin/csh

# wget https://download1.rstudio.org/rstudio-xenial-1.1.423-amd64.deb .
cp /mnt/gcs-bucket/gae-persist/rstudio-xenial-1.1.423-amd64.deb .

sudo dpkg -i rstudio-xenial-1.1.423-amd64.deb 
sudo apt-get -f install



