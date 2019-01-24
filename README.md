# kdm-manager-downtime
The downtime application for kdm-manager (https://kdm-manager.com)

* Webapp: [Flask](http://flask.pocoo.org/) + [AngularJS](https://angularjs.org/) (1.754)
* Webserver: [NGINX](https://www.nginx.com/) + [Gunicorn](http://gunicorn.org/)

## Install

Install host dependencies:

    # apt-get -y update
    # apt-get -y install python3 python3-venv python3-dev supervisor nginx git

Clone the repo.

Install app dependencies:

    $ cd kdm-manager-downtime
    $ source venv/bin/activate
    $ pip install -r requirements.txt
    $ deactivate

## Run

Run the dev server from the root of the app:

    $ cd kdm-manager-downtime
    $ ./server.sh dev

## Deploy

In order to deploy, run the `install.sh` script as root:

    # cd kdm-manager-downtime
    # ./install.sh
    # supervisorctl reload

The app should be running on 127.0.0.0:8020 and nginx should be listening for
requests for https://downtime.kdm-manager.com, https://kdm-manager.com, etc.
