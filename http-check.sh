#!/bin/bash
MY_URL="url_site"
#RESULT_502=`curl -I $MY_URL|grep "HTTP/1.1 502"`
#RESULT_504=`curl -I $MY_URL|grep "HTTP/1.1 504"`
RESULT_200=`curl -I -m20 $MY_URL|grep "HTTP/1.1 200"`

if [ ! -n "$RESULT_200" ]; then
    /etc/init.d/supervisor stop;/etc/init.d/supervisor start
    echo "Restarted supervisor, 502 at `TZ=Asia/Jakarta date +'%Y-%m-%d %H:%M:%S                                                                                        '`." >> /var/log/spv_restarter.log
fi

#if [ -n "$RESULT_502" ]; then
#cd /srv/[nama_file]/universal-prod/dist;PORT=4000 nodemon server.js &
#/etc/init.d/supervisor stop;/etc/init.d/supervisor start
#  echo "Restarted supervisor, 502 at `TZ=Asia/Jakarta date +'%Y-%m-%d %H:%M:%S'                                                                                        `." >> /var/log/spv_restarter.log
#elif [ -n "$RESULT_504" ]; then
#/etc/init.d/supervisor stop;/etc/init.d/supervisor start
#  echo "Restarted supervisor, 504 at `TZ=Asia/Jakarta date +'%Y-%m-%d %H:%M:%S'                                                                                        `." >> /var/log/spv_restarter.log

#fi
