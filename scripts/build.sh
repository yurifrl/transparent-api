#!/bin/bash

BASEDIR=$(dirname $0)/..

echo "-------> Changing to base dir"
cd $BASEDIR

echo "-------> Runnig docker build"
docker build -t transparent-api . && brb
