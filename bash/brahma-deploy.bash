#!/usr/bin/env bash

# for i in $n_procs; do
#   ./procs[${i}] &
#   pids[${i}]=$!
# done
#
# for pid in ${pids[*]}; do
#   wait $pid
# done

projectsServer="brahma-api brahma-chat brahma-notifications"
projectsClient="hearthy-client-public hearthy-professional-public brahma-admin-public"

projects="all"

if [ -n "$1" ]; then
  projects=$1
fi

color_1='\033[0;35m'
color_2='\033[1;35m'
color_3='\033[0;90m'
color_no='\033[0m'

echo -e "${color_1}${color_2} ____  _____ _____ __    _____ __ __    _____ _____ _____ _____ _____ _____
|    \|   __|  _  |  |  |     |  |  |  |   __|_   _|  _  | __  |_   _|   __|
|  |  |   __|   __|  |__|  |  |_   _|  |__   | | | |     |    -| | | |__   |
|____/|_____|__|  |_____|_____| |_|    |_____| |_| |__|__|__|__| |_| |_____|$color_no"

./grunt

if [ "$projects" == "all" -o "$projects" == "server" ]; then
  for project in $projectsServer; do
    cd "$project"
    echo -e "${color_1}Deploying ${color_2}$project$color_no"
    git push --force DEV develop:master
    cd ..
  done
fi

if [ "$projects" == "all" -o "$projects" == "client" ]; then
  for project in $projectsClient; do
    cd "$project"
    echo -e "${color_1}Deploying ${color_2}$project$color_no"
    python -c'import time; print repr(time.time())' > .force_push
    git add .
    git commit --amend -a -m "deployment" > /dev/null
    git push --force DEV
    cd ..
  done
fi

echo -e "${color_1}${color_2}END OF DEPLOYMENT$color_no"
