#!/bin/bash
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear

sleep 30s
jenkins_pwd=$(sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword)
echo "# get password for docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword">> /data/apps/jenkins/.env
echo "APP_PASSWORD=$jenkins_pwd" >> /data/apps/jenkins/.env

