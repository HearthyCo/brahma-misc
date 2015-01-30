#!/usr/bin/env bash

color_1='\033[0;32m'
color_2='\033[1;32m'
color_3='\033[0;90m'
color_no='\033[0m'

if (( "$#" != 0 )); then
  for dir in *; do
    if [[ -d "$dir" ]]; then
      if [[ "xnpm" == "x$1" && ! -f "$dir/package.json" ]]; then
        continue
      fi
      if [[ "xbower" = "x$1" && ! -f "$dir/bower.json" ]]; then
        continue
      fi
      cd $dir || continue
      echo -e "$color_1$dir \$ $color_2$@$color_no"
      eval "$@ <&-" 2>&1 | sed "s/^/$(echo -e "$color_3$dir \> $color_no")/" &
      cd ..
    fi
  done
  wait
fi