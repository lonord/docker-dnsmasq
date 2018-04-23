#!/bin/bash

service dnsmasq start
tail -f /var/log/faillog
