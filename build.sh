#!/bin/bash

DIR=$(pwd)

if [[ "$(docker images -q sgdk:latest 2> /dev/null)" == "" ]]; then
  cd tmp

  if [[ ! -f SGDK/Dockerfile ]]; then
    git clone https://github.com/Stephane-D/SGDK.git
  fi
  cd SGDK
  docker build -t sgdk:latest .
  cd $DIR
fi

docker run --rm -v "$PWD":/src sgdk:latest

