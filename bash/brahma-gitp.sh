#!/usr/bin/bash

color_1='\033[0;36m'
color_2='\033[1;36m'
color_no='\033[0m'

if test "$@"; then
  for dir in brahma-*/; do
    cd $dir
    echo -e "$color_1$dir\$ ${color_2}git $@$color_no"
    git "$@" &
    cd ..
  done
  wait
fi