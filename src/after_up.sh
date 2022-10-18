#!/bin/bash
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear

jenkins_pwd=$(sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword)
echo "# get password for docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword">> /data/apps/jenkins/.env
while [  ! -n "$jenkins_pwd" ]
do
    sleep 3s
    jenkins_pwd=$(sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword)
done
echo "APP_PASSWORD=$jenkins_pwd" >> /data/apps/jenkins/.env

