# [Cuda Cleaner](https://github.com/europanite/cuda_cleaner "Cuda Cleaner")

[![pages-build-deployment](https://github.com/europanite/cuda_cleaner/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/europanite/cuda_cleaner/actions/workflows/pages/pages-build-deployment)

A shell script to remove all  cuda libraries

This script completely removes CUDA, cuDNN, and NVIDIA-related packages from an Ubuntu system.  
It is useful when you want to reinstall CUDA or fix conflicts caused by multiple versions.

---

## ⚠️ Warning
- Running this script will **remove the NVIDIA GPU driver** as well.  
- After execution, you may lose GUI display if your desktop depends on the NVIDIA driver.  
- Make sure you know how to reinstall the driver if needed (`apt install nvidia-driver-XXX`).

---

## What the script does
- Purges CUDA, cuDNN, and NVIDIA-related packages using `apt-get`.
- Cleans up unused dependencies with `autoremove` and `autoclean`.
- Deletes CUDA directories under `/usr/local/cuda*`.

---

## Usage

```bash
curl -O https://raw.githubusercontent.com/europanite/cuda_cleaner/main/cuda_cleaner.sh
chmod +x cuda_cleaner.sh
./cuda_cleaner.sh

```

## License
- Apache License 2.0
