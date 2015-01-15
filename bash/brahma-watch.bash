#!/usr/bin/env bash

cd brahma-components
grunt watch | sed "s/^/b-com > /" &
#comppid=$!
#echo "PID: $comppid"
cd ..
cd brahma-css
grunt watch | sed "s/^/b-css > /" &
#csspid=$!
#echo "PID: $csspid"
cd ..
cd brahma-client
grunt dev | sed "s/^/b-cli > /" &
#kill $comppid
#kill $csspid