#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
    target/sweater-1.0-SNAPSHOT.jar \
    aleks4ay@192.168.0.184:/home/aser/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa aser@192.168.0.184 << EOF

pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'