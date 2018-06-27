@echo off
cd /d %~dp0
set SRCROOT=%CD%
set path=%PATH%;%SRCROOT%\scripts
call build\setenv.bat
powershell -NoExit -ExecutionPolicy Bypass -Command "$ErrorActionPreference='Stop';. .\build\BuildCpp.ps1; Enter-Workbench"

