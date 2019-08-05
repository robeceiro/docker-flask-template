#Using docker
export FLASK_LOG=/logs/app.log # Must start with /
docker kill flask_deploy
docker rm flask_deploy
docker build -t flask_app .
docker run -d --name flask_deploy -v `pwd`/logs:/logs:rw --restart=always -p 81:80 -t flask_app