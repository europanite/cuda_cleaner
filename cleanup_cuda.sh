#!/bin/bash
set -e

# Remove CUDA and NVIDIA related packages
sudo apt-get --purge remove -y nvidia* cuda* libcudnn* libnvidia* libcuda*

# Clean up unnecessary packages
sudo apt-get autoremove -y
sudo apt-get autoclean -y

# Remove CUDA directories
sudo rm -rf /usr/local/cuda*

# (Optional) Remove cuDNN libraries manually if installed via tarball
sudo rm -rf /usr/lib/x86_64-linux-gnu/libcudnn*
