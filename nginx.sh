#!/bin/bash

sudo cp -rf talatparwez.conf /etc/nginx/conf.d
chmod 710 /var/lib/jenkins/workspace/django-talatparwez

sudo nginx -t 

sudo systemctl start nginx
sudo systemctl enable nginx

echo "nginx has been started"

sudo systemctl status nginx