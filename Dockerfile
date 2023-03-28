# Core, stripped down image to run CI workflows
FROM ubuntu:22.04 AS ci

LABEL version="1.0"
LABEL description="Raspberry Pi Pico CI Environment"

RUN apt update -y

# cURL
RUN apt install -y curl xz-utils

# Toolchain called out by RaspberryPi
RUN apt install -y cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential

# Start with CI image to build development image
# Contains development tool such as git, debug support, etc.
FROM ci as dev

LABEL version="1.0"
LABEL description="Raspberry Pi Pico development Environment"

# Development tools
RUN apt install -y git

# Cleanup
RUN apt -qy autoremove
