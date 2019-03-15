#!/bin/bash -eux

# ensure that ENV VARs are set
export DOCKER_USERNAME=${DOCKER_USERNAME:=$(whoami)}
export PACKAGE=${PACKAGE:=osquery}
export PACKAGE_VERSION=${PACKAGE_VERSION:=3.3.2-1.linux}
export BASE_IMAGE=${BASE_IMAGE:="amazonlinux:1"}
export IMAGE_NAME=${IMAGE_NAME:="amazonlinux1"}

./build_packer_docker.sh
