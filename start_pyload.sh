#!/bin/bash

docker run -d -p 8000:8000 -p 7227:7227 -e UID=1000 -e GID=1000 -v /home/pi/downloads:/opt/pyload/Downloads -v /home/pi/pyload-config:/opt/pyload/pyload-config --name pyload diegoweb/rpi-pyload
