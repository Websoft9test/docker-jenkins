#!/bin/bash
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear

sleep 90s
jenkins_pwd=$(sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword)
echo "APP_PASSWORD=$jenkins_pwd" >> /data/apps/jenkins/.env

