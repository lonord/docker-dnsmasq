#!/bin/bash

CWD="$( cd "$( dirname "$0"  )" && pwd  )"
cd $CWD

docker build -t lonord/dnsmasq:debian -f from_debian.Dockerfile .

docker build -t lonord/dnsmasq:node -f from_node.Dockerfile .
