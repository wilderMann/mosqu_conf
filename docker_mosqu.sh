#!/usr/bin/env bash

docker run -itd \
	--name mqtt \
	-p 1883:1883 \
	-p 9001:9001 \
	-v /home/andi/mosquitto/mosqu_conf:/mosquitto/config \
	-v /home/andi/mosquitto/mosqu_data:/mosquitto/data \
	-v /home/andi/mosquitto/mosqu_log:/mosquitto/log \
	--env UID=1001 \
	--env GID=1001 \
	--env GIDLIST=1001 \
	--privileged \
	--restart=always \
	eclipse-mosquitto:latest
