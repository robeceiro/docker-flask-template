#!/bin/bash
rm -rf dist
mkdir dist

cp -R app/* dist/

SERVER=ubuntu@ec2-....compute-1.amazonaws.com
KEY=super_secret_key.pem
scp -r -i $KEY dist/* $SERVER:~/deploy/app/
scp -r -i $KEY requirements.txt $SERVER:~/deploy/
ssh -i $KEY $SERVER "docker kill flask_deploy; docker rm flask_deploy; docker build -t flask_app deploy/; docker run -d --name flask_deploy -v /home/ubuntu/logs:/logs:rw --restart=always -p 80:80 -t flask_app"