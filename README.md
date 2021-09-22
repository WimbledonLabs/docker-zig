# docker-zig
A docker image for building/testing zig projects.

Run `docker build . --build-arg VERSION=0.8.0` to create a container with a released Zig version.

Run `docker build . --build-arg DEV_BUILD=0.9.0-dev.1139+affd8f8b5` to create a container with an in-development version of Zig.
