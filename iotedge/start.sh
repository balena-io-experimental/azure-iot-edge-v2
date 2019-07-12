#!/bin/bash

ln -s /var/run/balena.sock /var/run/docker.sock

docker ps

/usr/bin/iotedged -c /etc/iotedge/config.yaml
while :
do
	echo "Just looping..."
	sleep 30
done