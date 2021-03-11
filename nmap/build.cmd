docker build -t dcjulian29/nmap:7.91.1 .
docker tag dcjulian29/nmap:7.91.1 dcjulian29/nmap:latest
docker push dcjulian29/nmap --all-tags
