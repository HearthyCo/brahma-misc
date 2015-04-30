#!/bin/bash

back=$(pwd)
cd "$( dirname "${BASH_SOURCE[0]}" )"
./run.sh
cd "$back"
exit 0

