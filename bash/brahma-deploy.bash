#!/usr/bin/env bash

# for i in $n_procs; do
#   ./procs[${i}] &
#   pids[${i}]=$!
# done
#
# for pid in ${pids[*]}; do
#   wait $pid
# done

color_1='\033[0;35m'
color_2='\033[1;35m'
color_3='\033[0;90m'
color_no='\033[0m'

echo -e "${color_1}${color_2} ____  _____ _____ __    _____ __ __    _____ _____ _____ _____ _____ _____
|    \|   __|  _  |  |  |     |  |  |  |   __|_   _|  _  | __  |_   _|   __|
|  |  |   __|   __|  |__|  |  |_   _|  |__   | | | |     |    -| | | |__   |
|____/|_____|__|  |_____|_____| |_|    |_____| |_| |__|__|__|__| |_| |_____|$color_no"

./grunt
for project in "brahma-api" "brahma-chat" "brahma-notifications"; do
  cd "$project"
  echo -e "${color_1}Deploying ${color_2}$project$color_no"
  git push --force DEV develop:master
  cd ..
done
for project in "hearthy-client-public" "hearthy-professional-public" "brahma-admin-public"; do
  cd "$project"
  echo -e "${color_1}Deploying ${color_2}$project$color_no"
  python -c'import time; print repr(time.time())' > .force_push
  git add .
  git commit --amend -a -m "deployment" > /dev/null
  git push --force
  cd ..
done

echo -e "${color_1}${color_2}END OF DEPLOYMENT$color_no"
