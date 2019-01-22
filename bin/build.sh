#!/bin/bash

source bin/utils.sh

#########################
#       CLI images      #
#########################
# ./bin/build-cli.sh slim
# dr push xigen/php:cli-slim
#
# dr build --squash -f cli/Dockerfile-composer -t xigen/php:cli-composer cli/
# dr push xigen/php:cli-composer
#
./bin/build-cli.sh 73
dr push xigen/php:cli-73

#########################
#       FPM images      #
#########################
./bin/build-fpm.sh 72 72
dr push xigen/php:fpm-72

./bin/build-fpm.sh 73 73
dr push xigen/php:fpm-73
