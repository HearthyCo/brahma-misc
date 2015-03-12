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
 __  __           _               ____ _     _       __ 
|  \\/  | __ _ ___| |_ ___ _ __   / ___| |__ (_) ___ / _|
| |\\/| |/ _\` / __| __/ _ \\ '__| | |   | '_ \\| |/ _ \\ |_ 
| |  | | (_| \\__ \\ ||  __/ |    | |___| | | | |  __/  _|
|_|  |_|\\__,_|___/\\__\\___|_|     \\____|_| |_|_|\\___|_|  
                                                        

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
cd brahma-admin
grunt dev 2>&1 | sed -e "s/^/$(echo -e ${color_client}b-cli${color_no}' ')/"
#kill $comppid
#kill $csspid
echo
echo -e "  ${color_watch}Something tells me I'm not gonna like this.${color_no}"
echo
