#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s {{cookiecutter.install_dir}}/etc/nginx.conf ./sites-available/{{cookiecutter.instance_name}}.conf
ln -s ./sites-available/{{cookiecutter.instance_name}}.conf ./sites-enabled/.

service nginx stop
certbot certonly --standalone -d {{cookiecutter.domain_name}}
service nginx start
