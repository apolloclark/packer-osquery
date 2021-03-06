#!/bin/bash -eux

# ensure that ENV VARs are set
export DOCKER_USERNAME=${DOCKER_USERNAME:=$(whoami)}
export PACKAGE=${PACKAGE:=osquery}
export PACKAGE_VERSION=${PACKAGE_VERSION:=3.3.2-1.linux}
export BASE_IMAGE=${BASE_IMAGE:="ubuntu:16.04"}
export IMAGE_NAME=${IMAGE_NAME:="ubuntu16.04"}

./build_packer_docker.sh
