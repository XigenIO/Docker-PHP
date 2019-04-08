#!/bin/bash

export build_debug_enable=0;
if [ -z "$1" ]; then
      echo ""
else
      if [ $1 = "debug" ]; then
            echo "debug set"
            build_debug_enable=1;
      else
            echo ""
      fi
fi

source bin/utils.sh

#########################
#       CLI images      #
#########################
./bin/build-cli.sh 5
./bin/build-cli.sh 72
./bin/build-cli.sh 73
./bin/build-cli.sh slim
./bin/build-cli.sh composer
./bin/build-cli.sh debug

#########################
#       FPM images      #
#########################
./bin/build-fpm.sh 5
./bin/build-fpm.sh 70
./bin/build-fpm.sh 72
./bin/build-fpm.sh 73
