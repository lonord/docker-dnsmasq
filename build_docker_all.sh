#!/bin/bash

CWD="$( cd "$( dirname "$0"  )" && pwd  )"
cd $CWD

cd from_debian
docker build -t lonord/dnsmasq:debian .
cd ..

cd from_node
docker build -t lonord/dnsmasq:node .
cd ..
