#!/bin/bash
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear

sleep 30s
jenkins_pwd=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
echo "APP_PASSWORD=$jenkins_pwd" >> /data/apps/jenkins/.env

