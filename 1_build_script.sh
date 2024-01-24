#!/bin/bash

echo "필수 패키지 설치"
# 커널 빌드 할 때 꼭 필요함
# 문법 분석기, 텍스트 처리기, CLI 계산기 설치
sudo apt-get update
sudo apt install -y bison flex bc

echo "커널 빌드 출력 경로 설정"

KERNEL_TOP_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
OUTPUT="$KERNEL_TOP_PATH/out"
echo "$OUTPUT"

KERNEL=kernel7
BUILD_LOG="$KERNEL_TOP_PATH/rpi_build_log.txt"

echo "커널 소스 이동"
cd linux

echo "make defconfig"
make O=$OUTPUT bcm2709_defconfig

echo "커널 빌드"
make O=$OUTPUT zImage modules dtbs -j4 2>&1 | tee $BUILD_LOG
