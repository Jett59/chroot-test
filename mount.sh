#! /bin/sh

: "${1:?Please provide a host directory}"
: "${2:?Please provide a guest directory}"
: "${3:?Please provide a file system name}"

mkdir -p "$(dirname "sysroots/$3/$2")"

if [ -d "$1" ] ; then
mkdir -p "sysroots/$3/$2"
else
if [ -f "$1" ] ; then
touch "sysroots/$3/$2"
else
echo "Could not mount '$1': no such file or directory" > /dev/stderr
exit 1
fi
fi

mount -o bind "$1" "sysroots/$3/$2"
