@echo off
call gradlew clean build
mkdir "%cd%\build"
move "%cd%\launcher*\build\libs\*-all.jar" "%cd%\build"
cd "%cd%\build"
ren "launcher-*.*.*-all.jar" "launcher.jar"
ren "launcher-fancy-*.*.*-all.jar" "launcher-fancy.jar"
ren "launcher-bootstrap-*.*.*-all.jar" "launcher-bootstrap.jar"
"%JAVA_HOME%\bin\pack200.exe" --no-gzip launcher-fancy.jar.pack launcher-fancy.jar
"%JAVA_HOME%\bin\pack200.exe" --no-gzip launcher.jar.pack launcher.jar
pause
