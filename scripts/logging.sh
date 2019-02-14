#!/bin/sh
mosquitto_sub -h localhost -t /SensorBrick2 -u andi -P andi12 -F %J  >> /home/andi/log/SensorBrick2 &
mosquitto_sub -h localhost -t /SensorBrick1 -u andi -P andi12 -F %J  >> /home/andi/log/SensorBrick1
