#!/bin/bash

source bin/utils.sh

#########################
#       CLI images      #
#########################
<<<<<<< HEAD
# ./bin/build-cli.sh slim
# dr push xigen/php:cli-slim
#
# dr build --squash -f cli/Dockerfile-composer -t xigen/php:cli-composer cli/
# dr push xigen/php:cli-composer
#
./bin/build-cli.sh 73
dr push xigen/php:cli-73
=======
./bin/build-cli.sh 72
./bin/build-cli.sh 73
./bin/build-cli.sh slim
./bin/build-cli.sh composer
>>>>>>> Updated build scripts and removed old image files

#########################
#       FPM images      #
#########################
./bin/build-fpm.sh 72
./bin/build-fpm.sh 73
