#!/bin/sh

SOURCE="/usr/local/emapaccess/1.0"
DESTINATION="/usr/local/bin"
INFO="emap_access_info.txt"
SCRIPT="emap_access.sh"

if [ ! -L ${DESTINATION}/${INFO} ]; then
    ln -s ${SOURCE}/${INFO} ${DESTINATION}
fi

if [ ! -h ${DESTINATION}/${SCRIPT} ]; then
    ln -s ${SOURCE}/${SCRIPT} ${DESTINATION}
fi

cp -f ${SOURCE}/config/cvl-emapaccess-1.0-emap_access.sh.desktop  /usr/local/share/applications
