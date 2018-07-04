#!/bin/bash

docker --version

docker --help

docker run --help

docker ps

docker run ubuntu:latest bash -c 'echo Hello world from $(cat /etc/issue) on $(date)!'

docker run debian:latest bash -c 'echo Hello world from $(cat /etc/issue) on $(date)!'

docker run -it ubuntu:latest
