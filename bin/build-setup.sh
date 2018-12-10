#!/bin/bash

source bin/utils.sh

export dir=$(mktemp -d)

cd $dir

wget https://github.com/docker-library/php/archive/master.zip

unzip master.zip

cd php-master/

dr rmi -f php:7.3-rc-fpm-alpine
dr pull php:7.3-rc-fpm-alpine
before=$(dr image inspect php:7.3-rc-fpm-alpine --format='{{.Size}}' | awk '{ foo = $1 / 1024 / 1024 ; print foo "MB" }')
dr build --no-cache --pull --squash -f 7.3/alpine3.8/fpm/Dockerfile -t php:7.3-rc-fpm-alpine 7.3/alpine3.8/fpm/
after=$(dr image inspect php:7.3-rc-fpm-alpine --format='{{.Size}}' | awk '{ foo = $1 / 1024 / 1024 ; print foo "MB" }')

echo "Before"
echo ${before}

echo "After"
echo ${after}

dr run -rm php:7.3-rc-fpm-alpine php -v

rm -rf $dir
