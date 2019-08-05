# Docker Python Flask Template

## To start developing: Activate virtual environment called 'venv'
Use command:
> . venv/bin/activate

## To stop developing: Dectivate virtual environment
Use command:
> deactivate

## To update requirements.txt
Use command:
> pip freeze > requirements.txt

## To use locally with docker:
Use command:
> ./docker_develop.sh

Access http://localhost:81
Logs go to logs/app.log (set by environment variable)

## To use locally without docker:
Use command:
> ./develop.sh

Access http://localhost:5000
Logs go to logs/app.log (set in app, can be overriden by environment variable)

## To deploy new version:
Use command:
> ./deploy.sh
Access http://server_ip:80
Logs go to /home/ubuntu/logs/app.log