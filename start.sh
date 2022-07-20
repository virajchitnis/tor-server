#!/bin/sh

docker run --detach --restart always --name tor-server -v $(pwd)/config/etc:/etc/tor:ro -v $(pwd)/config/lib:/var/lib/tor:rw --publish 9050:9050 virajchitnis/tor-server
