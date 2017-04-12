#!/bin/bash

mkdir -p ~/download
cd ~/download/

# steps 1)
echo "Checking for CUDA and installing."
# Check for CUDA and try to install.
if ! dpkg-query -W cuda; then
  # The 16.04 installer works with 16.10.
  curl -O http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
  sudo dpkg -i ./cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
  sudo apt-get update
  sudo apt-get install cuda -y
fi

# to verify
#$ sudo reboot
#$ nvidia-smi


# install cuda-toolkit
# SAME as above steps 1)
#wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
#sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
#sudo apt-get update
#sudo apt-get install cuda  -y

# steps 2)
sudo apt-get install -y nvidia-cuda-toolkit
# to verify
nvcc --version

# TOTAL storage 9G
