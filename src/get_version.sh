sudo echo jenkins version: $(docker exec -i $1 cat /data/wwwroot/jenkins/config.xml |grep version |sed -n 2p |tr -d "</>version") |sudo tee -a /data/logs/install_version.txt
