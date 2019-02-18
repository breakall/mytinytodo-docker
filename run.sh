#!/bin/bash
rm -f /var/run/apache2.pid
/usr/sbin/apache2ctl -D FOREGROUND
