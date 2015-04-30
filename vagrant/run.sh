#!/bin/bash

sys=`uname`

#Defaults
#containers="postgres rabbitmq redis swagger"
containers="postgres rabbitmq redis pushd"

if [[ "x$1" != "x" ]]; then
  containers=$1
fi

if [[ "$sys" == "Linux" ]]; then
  vagrant up $containers
else
  vagrant up --no-parallel --provider=docker $containers
fi