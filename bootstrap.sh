#!/usr/bin/env sh

apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vargrant /var/www