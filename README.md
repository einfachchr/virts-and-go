# What's this?

This is a simple experiment to build a service that does some basic image processing
using the libvips library.


# Tasks
* DONE set up basic docker image
  * DONE base image
  * DONE install libvips
  * DONE install golang
  * DONE get
  * DONE local directory for source code
* Hello World
* get image type (func DetermineImageType)
  * print to log
* get image resolution
  * print to log
* get image size
  * print to log



# Docker
docker build -t vag .
docker run --rm -it -v /home/chr/projects/go:/go vag bash

# Packages
dnf install gcc
dnf install vips-devel


# Links

* https://github.com/davidbyttow/govips
