@echo off
call gradlew clean build
cd "%cd%\launcher-fancy\build\libs"
ren "launcher-fancy-*.*.*-all.jar" "launcher-fancy.jar"
"%JAVA_HOME%\bin\pack200.exe" --no-gzip launcher-fancy.jar.pack launcher-fancy.jar
cd "..\..\..\launcher\build\libs"
ren "launcher-*.*.*-all.jar" "launcher.jar"
"%JAVA_HOME%\bin\pack200.exe" --no-gzip launcher.jar.pack launcher.jar
cd "..\..\..\launcher-bootstrap\build\libs"
ren "launcher-bootstrap-*.*.*.jar" "launcher-bootstrap.jar"
pause
