@echo off
setlocal

set "MAVEN_HOME=%~dp0.maven\apache-maven-3.9.9"
set "MVN_CMD=%MAVEN_HOME%\bin\mvn.cmd"

if not exist "%MVN_CMD%" (
    echo Maven not found at %MVN_CMD%
    echo Please ensure .maven\apache-maven-3.9.9 exists
    exit /b 1
)

"%MVN_CMD%" -s "%~dp0.mvn\settings.xml" %*
