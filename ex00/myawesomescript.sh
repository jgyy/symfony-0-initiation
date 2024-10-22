#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: $0 <bit.ly_url>"
    exit 1
fi

curl -sIL "$1" | \
    grep "Location:" | \
    tail -n 1 | \
    cut -d' ' -f2
