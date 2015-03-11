#!/usr/bin/env bash

color_1='\033[0;37m'
color_2='\033[1;37m'
color_no='\033[0m'

echo -e "${color_1}${color_2} ____  _____ _____ __    _____ __ __    _____ _____ _____ _____ _____ _____
|    \|   __|  _  |  |  |     |  |  |  |   __|_   _|  _  | __  |_   _|   __|
|  |  |   __|   __|  |__|  |  |_   _|  |__   | | | |     |    -| | | |__   |
|____/|_____|__|  |_____|_____| |_|    |_____| |_| |__|__|__|__| |_| |_____|$color_no"

./grunt
cd "hearthy-client-public"
python -c'import time; print repr(time.time())' > .force_push
git add .
git commit --amend -a -m "deployment" > /dev/null
git push --force
cd ..
cd "hearthy-professional-public"
python -c'import time; print repr(time.time())' > .force_push
git add .
git commit --amend -a -m "deployment" > /dev/null
git push --force
cd ..

echo -e "${color_1}${color_2}END OF DEPLOYMENT$color_no"
