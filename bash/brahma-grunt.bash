#!/usr/bin/env bash

color_1='\033[0;33m'
color_2='\033[1;33m'
color_no='\033[0m'

# This should be in dependency order, even if duplication is needed
tasks="brahma-css brahma-components hearthy-client hearthy-professional"

for task in $tasks; do
  cd "$task"
  echo -e "${color_1}$task\$ ${color_2}grunt $argv$color_no"
  grunt $argv
  cd ..
done
