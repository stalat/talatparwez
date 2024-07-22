#!/bin/bash

sudo cp -rf talatparwez.conf /etc/nginx/sites-available/talatparwez
chmod 710 /var/lib/jenkins/workspace/django-talatparwez

sudo ln -s /etc/nginx/sites-available/talatparwez /etc/nginx/sites-enabled

sudo nginx -t 

sudo systemctl start nginx
sudo systemctl enable nginx

echo "nginx has been started"

sudo systemctl status nginx