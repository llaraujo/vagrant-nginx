#!/bin/sh -e

sudo apt-get update -y;

gem install chef --version 11.4.4 --no-rdoc --no-ri --conservative;

cp /vagrant/_config/nginx/default /etc/nginx/sites-available/default;

sudo /etc/init.d/nginx restart;
