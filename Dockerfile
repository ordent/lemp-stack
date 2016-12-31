from ubuntu:14.04

run cd /tmp/ && wget http://nginx.org/keys/nginx_signing.key

run sudo apt-key add nginx_signing.key

run sudo vi /etc/apt/sources.list.d/nginx.list

run deb http://nginx.org/packages/mainline/ubuntu/ utopic nginx

run deb-src http://nginx.org/packages/mainline/ubuntu/ utopic nginx

run sudo apt-get update && sudo apt-get install nginx
