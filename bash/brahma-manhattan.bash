#!/usr/bin/env bash

color_components='\033[38;5;75m'
color_css='\033[38;5;124m'
color_client='\033[38;5;70m'
color_watch='\033[0;33m'
color_watchmen='\033[1;93m'
color_red='\033[1;91m'
color_no='\033[0m'

echo -e $color_watchmen
cat <<WATCH
 ____         __  __             _           _   _              
|  _ \\ _ __  |  \\/  | __ _ _ __ | |__   __ _| |_| |_ __ _ _ __  
| | | | '__| | |\\/| |/ _\` | '_ \\| '_ \ / _\` | __| __/ _\` | '_ \\ 
| |_| | | _  | |  | | (_| | | | | | | | (_| | |_| || (_| | | | |                                                                                         
|____/|_|(_) |_|  |_|\\__,_|_| |_|_| |_|\\__,_|\\__|\\__\\__,_|_| |_|                                                                                         
                                                                
WATCH
echo -e $color_no

cd brahma-components
grunt watch 2>&1 | sed -e "s/^/$(echo -e ${color_components}b-com${color_no}' ')/" &
#comppid=$!
#echo "PID: $comppid"
cd ..
cd brahma-css
grunt watch 2>&1 | sed -e "s/^/$(echo -e ${color_css}b-css${color_no}' ')/" &
#csspid=$!
#echo "PID: $csspid"
cd ..
cd hearthy-professional
grunt dev 2>&1 | sed -e "s/^/$(echo -e ${color_client}b-cli${color_no}' ')/"
#kill $comppid
#kill $csspid
echo
echo -e "  ${color_watch}I feel fear, for the last time.${color_no}"
echo
