@echo off
call gradlew clean build
cd "%cd%\launcher-fancy\build\libs"
ren "launcher-fancy-*.*.*-all.jar" "launcher-fancy-all.jar"
pack200 --no-gzip launcher-fancy-all.jar.pack launcher-fancy-all.jar
cd "..\..\..\launcher\build\libs"
ren "launcher-*.*.*-all.jar" "launcher-all.jar"
pack200 --no-gzip launcher-all.jar.pack launcher-all.jar
cd "..\..\..\launcher-bootstrap\build\libs"
ren "launcher-bootstrap-*.*.*-all.jar" "launcher-bootstrap-all.jar"
pause
