#! /bin/sh

set -e

: "${1:?Please pass path to file system image}"
: "${2:?Please pass name of generated file system}"

mkdir -p "sysroots/$2"

TAR_PATH=$(realpath $1)

echo $@ > sysroots/$2_command

cd sysroots/$2 && tar -xf $TAR_PATH

mkdir -p etc

cat /etc/resolv.conf > ./etc/resolv.conf
