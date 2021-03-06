# packer-ruby

Packer, Ansible, Serverspec, project to create an osquery images, based on CentOS 7.4

## Requirements

- Packer
- Ansible
- [Serverspec](https://serverspec.org/): gem install serverspec
- [docker-api](https://github.com/swipely/docker-api/releases): gem install docker-api

## Install
```shell
git clone https://github.com/apolloclark/packer-ruby
cd ./packer-ruby

# set your Docker hub username
export DOCKER_USERNAME="apolloclark" # $(whoami)

# build the container image
./build_packer_docker.sh

# run the container image, allowing it to control the Host
docker run \
  --cap-add all \
  --privileged \
  --pid=host \
  --rm \
  --interactive \
  $DOCKER_USERNAME/osquery \
  /bin/bash -l


```

## Build Details

```shell
RVM, 1.29.7, 2019-01-03
https://github.com/rvm/rvm/releases

Ruby, 2.6.1, 2019-01-30
https://www.ruby-lang.org/en/downloads/releases/

Serverspec, 2.41.3, 2017-11-07
https://github.com/mizzy/serverspec/releases

Infrataster, 0.3.2, 2015-11-19
https://github.com/ryotarai/infrataster/releases
```