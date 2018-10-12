@echo off
call mvn clean package
call docker build -t at.htl.nvs/microproject .
call docker rm -f microproject
call docker run -d -p 8080:8080 -p 4848:4848 --name microproject at.htl.nvs/microproject