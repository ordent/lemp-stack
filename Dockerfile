from ubuntu:14.04
maintainer Dimas Satrio <dimassrio@gmail.com>
env UBUNTU_FRONTEND noninteractive
run sudo apt-get update
run sudo apt-get install wget -y -qq

run cd /tmp/ && wget http://nginx.org/keys/nginx_signing.key

run sudo apt-key add /tmp/nginx_signing.key

run sudo touch /etc/apt/sources.list.d/nginx.list

run echo "deb http://nginx.org/packages/mainline/ubuntu/ utopic nginx" > /etc/apt/sources.list.d/nginx.list

run echo "deb-src http://nginx.org/packages/mainline/ubuntu/ utopic nginx" > /etc/apt/sources.list.d/nginx.list

run sudo apt-get install -y language-pack-en-base && sudo apt-get install python-software-properties -y -qq && sudo apt-get install software-properties-common -y -qq

run sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php

run sudo apt-get update && sudo apt-get install nginx -y -qq supervisor php7.0 php7.0-fpm php7.0-pgsql
