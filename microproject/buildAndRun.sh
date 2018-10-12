#!/bin/sh
mvn clean package && docker build -t at.htl.nvs/microproject .
docker rm -f microproject || true && docker run -d -p 8080:8080 -p 4848:4848 --name microproject at.htl.nvs/microproject