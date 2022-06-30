#!/usr/bin/env bash

template="---
title: #gist test
date: \"$((date +"%Y-%m-%d %H:%M:%S %z") | cut -c 1-23)\"
last_modified_at: #2022-06-27 18:12:17 +6
published: #false
header:
    teaser: #/assets/images/my-awesome-post-teaser.jpg
    og_image: #/assets/images/page-header-og-image.png
categories:
    - #github

tags:
    - #plugins
---"
now=$(date +"%Y-%m-%d")

name=$1
output_dir=$2
fomatted_name="${name// /-}"
if [ "$1" != "" ]; then
    if [ "$2" != "" ]; then
        if [ -d "$2" ]; then
            echo "Creating post $fomatted_name"
            echo "$template" > "$output_dir/$fomatted_name.md"
            echo "Created post $fomatted_name"
        else
            echo "Output directory $2 does not exist"
        fi
    else
        echo "Output directory not specified"
    fi
  # echo "$template" > "$now-$fomatted_name.md"
else
  echo "Title is requeired"
  exit 0
fi
