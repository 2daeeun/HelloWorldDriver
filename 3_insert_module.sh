#!/bin/bash

echo "hello_world.c 빌드"
make

echo "Linux 커널에 커널 모듈 삽입"
sudo insmod hello_world.ko

echo "Linux 커널에 커널 모듈 제거"
sudo rmmod hello_world
