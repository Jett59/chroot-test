#! /bin/sh

set -e

: "${1:?Please specify a guest path to unmount}"
: "${2:?Please specify a file system name}"

umount "sysroots/$2/$1"
