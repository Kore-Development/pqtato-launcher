@echo off
call gradlew clean build
cd "%cd%\launcher-fancy\build\libs"
"%JAVA_HOME%\bin\pack200.exe" --no-gzip launcher-fancy-all.jar.pack launcher-fancy-*.*.*-all.jar
cd "..\..\..\launcher\build\libs"
"%JAVA_HOME%\bin\pack200.exe" --no-gzip launcher-all.jar.pack launcher-*.*.*-all.jar
pause
