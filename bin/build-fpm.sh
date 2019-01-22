#!/bin/bash

tag=fpm-${1}

source bin/utils.sh

build fpm/Dockerfile-$1 ${tag} fpm/
test ${tag}
