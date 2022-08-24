#!/bin/bash

BASE_DIR="/home/zphisher/zphisher"

docker build --tag zphisher .
docker run --mount type=bind,source=/home/zphisher/auth,target=/zphisher/auth  -p 80:8080 -ti zphisher
