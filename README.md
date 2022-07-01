# A Docker Container for NMap

[![Docker Pulls](https://img.shields.io/docker/pulls/dcjulian29/nmap.svg)](https://hub.docker.com/r/dcjulian29/nmap/) [![Docker Stars](https://img.shields.io/docker/stars/dcjulian29/nmap.svg?maxAge=2592000)](https://hub.docker.com/r/dcjulian29/nmap/) [![GitHub Issues](https://img.shields.io/github/issues-raw/dcjulian29/docker-nmap.svg)](https://github.com/dcjulian29/docker-nmap/issues) [![CI](https://github.com/dcjulian29/docker-nmap/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/dcjulian29/docker-nmap/actions/workflows/ci.yml) [![Release Image](https://github.com/dcjulian29/docker-nmap/actions/workflows/release.yml/badge.svg)](https://github.com/dcjulian29/docker-nmap/actions/workflows/release.yml)

NMap has been notorious for support under a Windows operating system over the years and I started running nmap inside a container which while limiting provides enough for me to be able to use it no matter what OS system is present on the host.

To use:

    docker run -it dcjulian29/nmap -v scanme.nmap.org
