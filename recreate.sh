#! /bin/sh

set -e

: "${1:?Please specify a file system name}"

./create.sh $(cat sysroots/$1_command)
