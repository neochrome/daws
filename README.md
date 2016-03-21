# dpython
Dockerized AWS Client


## Installation
```
$ git clone https://github.com/neochrome/daws
$ cd daws
$ sudo make install
```


## Usage
All things you can do with the original aws client should work as
expected:
```
$ daws help
```


## Building locally
A pre-built image exists on Docker Hub, but if you
want to, it's easy to build a local image:
```
$ cd daws
$ make
```


## Updating local image
In order to force an update of the docker image, run:
```
$ make update
```
or just:
```
$ docker pull neochrome/daws
```
