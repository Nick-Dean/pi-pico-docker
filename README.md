# Pi Pico Docker

The Pi Pico Docker images provide the tool necessarry to build, test, and debug
C++ Raspberry Pi Pico projects. There are currently two Docker images:

- `pi-pico-ci`
- `pi-pico-dev`

Using a [multi-stage build](https://docs.docker.com/build/building/multi-stage/),
a single [Dockerfile](Dockerfile) generates all images.

The `pi-pico-ci` image contains the tools required to build and test without the
overhead of debugging or other development tools. It contains the following:

- cURL
- xz tools
- CMake
- gcc-arm-none-eabi
- libnewlib-arm-none-eabi
- build-essential

The `pi-pico-dev` image contains the tools required for generarl development,
including debugging. It contains everything within `pi-pico-ci`, as well as
the following:

 - git
 - openocd