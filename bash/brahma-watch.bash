#!/usr/bin/env bash

color_components='\033[38;5;75m'
color_css='\033[38;5;124m'
color_client='\033[38;5;70m'
color_no='\033[0m'
prefix=''
postfix=''

cd brahma-components
grunt watch | sed -e "s/^/$(echo -e ${color_components}${prefix}b-com${postfix}${color_no}' ')/" &
#comppid=$!
#echo "PID: $comppid"
cd ..
cd brahma-css
grunt watch | sed -e "s/^/$(echo -e ${color_css}${prefix}b-css${postfix}${color_no}' ')/" &
#csspid=$!
#echo "PID: $csspid"
cd ..
cd brahma-client
grunt dev | sed -e "s/^/$(echo -e ${color_client}${prefix}b-cli${postfix}${color_no}' ')/"
#kill $comppid
#kill $csspid