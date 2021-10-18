#! /bin/sh

set -e

: "${1:?Please specify a file system name}"

chroot sysroots/$1 /bin/sh
