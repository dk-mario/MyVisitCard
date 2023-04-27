#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i target/KartsevDmitry-0.0.1-SNAPSHOT.jar \
           ubuntu@87.239.104.***:

echo 'Restart server...'

ssh ubuntu@87.239.104.*** <<EOF

pgrep java | xargs kill -9
nohup java -jar KartsevDmitry-0.0.1-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye'