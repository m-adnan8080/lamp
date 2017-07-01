#!/bin/bash
#

DIR="/var/lib/mysql"

# init look for empty dir
if [ "$(ls -A $DIR)" ]; then
        echo "MySQL Data directory exists. Starting MySQL Service ....."
else
        echo "$DIR is Empty. Creating Default MySQL Data directory ....."
        cp -rp /data/* /var/lib/mysql && rm -rf /data
fi

# Run supervisor daemon start all services
/usr/bin/supervisord