#!/bin/bash

sed -i '/http\s*{/ a include /etc/nginx/ssl_wiz/*.conf;' /wiz/config/nginx.conf
