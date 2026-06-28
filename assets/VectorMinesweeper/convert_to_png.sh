#!/usr/bin/env bash

set -e

error() {
    echo -e "\e[91;1m+++ ERROR:\e[0m $1" >&2
    if [ ${2:-1} -ne 0 ]; then exit ${2:-1}; fi
}

file="$1"
if [ -z $file ]; then error "Please provide a file"; fi
target_file="${file%.*}.png"

set -x

convert "$file" "$target_file"
