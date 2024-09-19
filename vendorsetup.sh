#!/bin/bash

# Color variables
YELLOW='\033[1;33m'
RESET='\033[0m'

# Welcome message
echo -e "Welcome to ${YELLOW}StatiX!${RESET}"

# Additional instructions
echo -e "\nHere are some things before you get started!\n"
echo -e "- Make sure you have these variables highlighted in this link in your device tree:"
echo -e "  https://github.com/StatiXOS/android_device_xiaomi_sky/blob/udc/device.mk#L11-L14"

echo -e "\n- Next, make sure you have a prebuilt kernel repo set up. It should look something like this:"
echo -e "  https://github.com/StatiXOS/android_device_xiaomi_sky-kernel"

echo -e "\n- If you don't have a prebuilt kernel repo, follow the manifests we have here for other devices and adapt it to yours:"
echo -e "  https://github.com/StatiXOS/android_kernel_manifest"

echo -e "\n- Finally, push any changes to our Gerrit if you think they're worthwhile, and we will try to review it as soon as possible.\n  Follow the guide below to get set up with our Gerrit:"
echo -e "  https://github.com/StatiXOS/android_manifest?tab=readme-ov-file#submitting-patches"

echo -e "\nDon't forget to join https://t.me/StatiXOSReleases! Enjoy! :D"
