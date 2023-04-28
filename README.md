# A Docker Container for NMap

[![GitHub Issues](https://img.shields.io/github/issues-raw/dcjulian29/docker-nmap.svg)](https://github.com/dcjulian29/docker-nmap/issues) [![Version](https://img.shields.io/docker/v/dcjulian29/nmap?sort=semver)](https://hub.docker.com/repository/docker/dcjulian29/nmap) [![Docker Pulls](https://img.shields.io/docker/pulls/dcjulian29/nmap.svg)](https://hub.docker.com/r/dcjulian29/nmap/)

[![Docker](https://github.com/dcjulian29/docker-nmap/actions/workflows/docker.yml/badge.svg)](https://github.com/dcjulian29/docker-nmap/actions/workflows/docker.yml) [![Release](https://github.com/dcjulian29/docker-nmap/actions/workflows/release.yml/badge.svg)](https://github.com/dcjulian29/docker-nmap/actions/workflows/release.yml) [![Build](https://github.com/dcjulian29/docker-nmap/actions/workflows/build.yml/badge.svg)](https://github.com/dcjulian29/docker-nmap/actions/workflows/build.yml) [![Tool](https://github.com/dcjulian29/docker-nmap/actions/workflows/tool.yml/badge.svg)](https://github.com/dcjulian29/docker-nmap/actions/workflows/tool.yml)

NMap has been notorious for support under a Windows operating system over the years and I started running nmap inside a container which while limiting provides enough for me to be able to use it no matter what OS system is present on the host.

To use:

    docker run -it dcjulian29/nmap -v scanme.nmap.org

Also included in this repository is a Windows binary that allow a person to run the nmap via the Docker container just like the example:

    nmap.exe -v scanme.nmap.org
