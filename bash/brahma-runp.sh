#!/usr/bin/bash

color_1='\033[0;32m'
color_2='\033[1;32m'
color_no='\033[0m'

if (( "$#" != 0 )); then
  for dir in brahma-*/; do
    cd $dir
    echo -e "$color_1$dir\$ $color_2$@$color_no"
    eval "$@" &
    cd ..
  done
  wait
fi