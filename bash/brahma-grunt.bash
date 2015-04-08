#!/usr/bin/env bash

color_1='\033[0;33m'
color_2='\033[1;33m'
color_3='\033[0;90m'
color_no='\033[0m'

# This should be in dependency order, even if duplication is needed
tasks="brahma-css brahma-components"
projects="hearthy-client hearthy-professional brahma-admin brahma-notifications"

for task in $tasks; do
  if [ -d "$task" ]; then
    cd "$task"
    echo -e "${color_1}$task\$ ${color_2}grunt $1$color_no"
    grunt $1 | sed "s/^/$(echo -e "$color_3""$task" \> "$color_no")/" &
    cd ..
  fi
done
wait

for project in $projects; do
  if [ -d "$project" ]; then
    cd "$project"
    echo -e "${color_1}$project\$ ${color_2}grunt $1$color_no"
    grunt $1 | sed "s/^/$(echo -e "$color_3""$project" \> "$color_no")/" &
    cd ..
  fi
done
wait