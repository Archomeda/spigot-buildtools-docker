#!/bin/sh

if [ $# -gt  1 ]; then
  echo >&2 "Error: more than one argument passed"
  exit 2
fi
if [ $# -eq 1 ]; then  # when an argument is passed, use that as revision
  REVISION=$1
fi

echo "Downloading and running SpigotMC BuildTools [$REVISION]"
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar \
  && java -jar BuildTools.jar --rev $REVISION
