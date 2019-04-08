#!/bin/bash

source bin/utils.sh

#########################
#       CLI images      #
#########################
./bin/build-cli.sh 72
./bin/build-cli.sh 73
./bin/build-cli.sh slim
./bin/build-cli.sh composer
./bin/build-cli.sh debug

#########################
#       FPM images      #
#########################
./bin/build-fpm.sh 70
./bin/build-fpm.sh 72
./bin/build-fpm.sh 73
