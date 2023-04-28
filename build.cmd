@echo off
setlocal

pushd %~dp0

for /f "delims=" %%x in (VERSION) do set VERSION=%%x

docker build --build-arg VERSION=%VERSION% -t dcjulian29/nmap:%VERSION% .

if %errorlevel% neq 0 GOTO FINAL

docker tag dcjulian29/nmap:%VERSION% dcjulian29/nmap:latest

:FINAL

goreleaser --snapshot --skip-publish --clean

popd

endlocal
