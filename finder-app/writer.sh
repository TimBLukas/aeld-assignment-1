#!/bin/bash


if [ $# -ne 2 ]; then
	echo "Usage: $0 <writefile> <writestr>"
	exit 1
fi


writefile="$1"
writestr="$2"

parentdir=$(dirname "$writefile")

if ! mkdir -p "$parentdir"; then
	echo "Error: Could not create directory $parentdir" >&2
	exit 1
fi

if ! echo "$writestr" > "$writefile"; then
	echo "Could not write to $writefile" >&2
	exit 1
fi


