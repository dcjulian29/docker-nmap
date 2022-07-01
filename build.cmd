@echo off
setlocal

pushd %~dp0

for /f "delims=" %%x in (version) do set VERSION=%%x

docker build --progress plain -t dcjulian29/nmap:%VERSION% .

if %errorlevel% neq 0 popd;exit /b %errorlevel%

popd

docker tag dcjulian29/nmap:%VERSION%  dcjulian29/nmap:latest
