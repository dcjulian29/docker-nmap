@echo off
setlocal

pushd %~dp0

for /f "delims=" %%x in (VERSION) do set VERSION=%%x
for /f "delims=" %%x in (REVISION) do set REVISION=%%x

docker build --progress plain --build-arg VERSION=%VERSION% -t dcjulian29/nmap:%VERSION%.%REVISION% .

if %errorlevel% neq 0 popd;exit /b %errorlevel%

popd

docker tag dcjulian29/nmap:%VERSION%.%REVISION%  dcjulian29/nmap:latest
