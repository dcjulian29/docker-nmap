@echo off
setlocal
set VERSION=7.91.1

docker build --pull --no-cache --progress plain -t dcjulian29/nmap:%VERSION% .
docker tag dcjulian29/nmap:%VERSION% dcjulian29/nmap:latest

docker push dcjulian29/nmap --all-tags
