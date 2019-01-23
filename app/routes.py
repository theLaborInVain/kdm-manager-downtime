import flask

from app import downtime

@downtime.route('/')
@downtime.route('/index')
def index():
    return flask.render_template('index.html', version=downtime.config['version'])


#
#	static routes for working in dev; production deploy uses nginx locations
#

@downtime.route('/favicon.ico')
def favicon():
    """ Returns the favicon when working in dev. """
    return flask.send_from_directory('static/images', 'favicon.ico')

@downtime.route('/static/<sub_dir>/<path:path>')
def route_to_static(path, sub_dir):
    """ Returns the static dir when working in dev. """
    return flask.send_from_directory("static/%s" % sub_dir, path)
