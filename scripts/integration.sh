#!/usr/bin/env bash

export SDK_CONF=/etc/sdk.conf

echo "timeout=1000" >> $SDK_CONF
echo "debug=True" >> $SDK_CONF
echo "errorlevel=3" >> $SDK_CONF

chmod 644 $SDK_CONF

apt update
apt install -y nginx

service nginx restart


export INDEX=/var/www/index.html
echo "<html>" >> $INDEX
echo "<head></head>" >> $INDEX
echo "<body>" >> $INDEX
echo "<h1> Hello Docker COntainer </h1>" >> $INDEX
echo "</body>" >> $INDEX
echo "</html>" >> $INDEX