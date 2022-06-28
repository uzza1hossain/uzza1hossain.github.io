#!/usr/bin/env bash
now=$(date +"%Y-%m-%d")
name=$1
if [ "$1" != "" ]; then
  touch "$now-$name.md"
else
  echo "Title is requeired"
  exit 0
fi
