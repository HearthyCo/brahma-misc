#!/usr/bin/env bash

color_1='\033[0;36m'
color_2='\033[1;36m'
color_3='\033[0;90m'
color_no='\033[0m'

if (( "$#" != 0 )); then
  # root
  if [[ -d "./.git" ]]; then
    echo -e "$color_1""brahma" "\$$color_2" "git $@" "$color_no"
    git "$@" 2>&1 | sed "s/^/$(echo -e "$color_3""brahma" \> "$color_no")/"
  fi

  # subgits
  for dir in *; do
    if [[ -d "$dir" && -d "$dir/.git" ]]; then
      cd $dir || continue
      echo -e "$color_1""$dir" "\$$color_2" "git $@" "$color_no"
      git "$@" 2>&1 | sed "s/^/$(echo -e "$color_3""$dir" \> "$color_no")/"
      cd ..
    fi
  done
  wait
fi
