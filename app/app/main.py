from flask import Flask
import logging
import os

app = Flask(__name__)
log_file = '/logs/app.log'
if "FLASK_LOG" in os.environ:
    log_file = os.environ['FLASK_LOG']

logging.basicConfig(filename=log_file,level=logging.DEBUG)

from .core import app_setup

logging.debug('Main method')

if __name__ == "__main__":
    # Only for debugging while developing
    app.run(host='0.0.0.0', debug=True, port=80)
