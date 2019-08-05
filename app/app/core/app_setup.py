from ..main import app
from ..api import api
import logging


@app.route("/")
def hello():
     # This could also be returning an index.html
     logging.debug('Traza 1')
     return '''Hola Marvik\
     try also: <a href="/users/">/users/</a>'''
