#!/bin/bash

# Launch docker daemon in our service
dockerd & 2>/dev/null 

#wait for docker to start.
sleep 5s
#Launch iotedge
/usr/bin/iotedged -c config.yaml

while :
do
	echo "Just looping..."
	sleep 30
done