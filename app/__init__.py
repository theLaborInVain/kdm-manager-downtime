from flask import Flask

downtime = Flask(__name__)
downtime.config['version'] = 0.0

from app import routes
