#!/bin/sh

LIB_DIR=$(pwd)/config/lib
CONTAINER_NAME=tor-server
HOST_PORT=9050

# Create lib directory if it doesnt exist
if [ ! -d "$LIB_DIR" ]; then
	mkdir $LIB_DIR
fi

# Set required permissions for lib directory
sudo chown -R 100:100 $LIB_DIR

# Start docker container
docker run --detach --restart always --name $CONTAINER_NAME -v $(pwd)/config/etc:/etc/tor:ro -v $(pwd)/config/lib:/var/lib/tor:rw --publish $HOST_PORT:9050 virajchitnis/tor-server
