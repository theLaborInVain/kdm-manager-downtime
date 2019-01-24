#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi


APP_ROOT=`pwd`


install() {
    echo -e " Creating symlinks:"
    ln -v -s $APP_ROOT/deploy/supervisor.conf /etc/supervisor/conf.d/kdm-manager-downtime.conf
    ln -v -s $APP_ROOT/deploy/nginx.conf /etc/nginx/sites-enabled/kdm-manager-downtime
    echo -e "\n Reloading services:"
    /etc/init.d/nginx reload
    supervisorctl reload
    sleep 5
    tail /var/log/supervisor/supervisord.log
    echo -e ""
    netstat -anp |grep 8020
    echo -e "\n Done!\n"

}



read -sn 1 -p "
 Press any key to create links to $APP_ROOT/deploy files...
";echo
install
