#With no docker
export FLASK_LOG=logs/app.log # Must not start with /
export FLASK_APP=app/app/main.py
flask run