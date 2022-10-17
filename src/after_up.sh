#!/bin/bash
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear

sleep 30s
echo "APP_PASSWORD=$1" >> /data/apps/jenkins/.env
