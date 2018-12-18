#!/bin/bash

source bin/utils.sh

./bin/build-cli.sh Dockerfile-5 cli-5
./bin/build-cli.sh Dockerfile-72 cli-72
./bin/build-cli.sh Dockerfile-73 cli-73
./bin/build-cli.sh Dockerfile-slim cli-slim

dr build --squash -f cli/Dockerfile-composer -t cli-composer cli/

./bin/build-fpm.sh Dockerfile-5 fpm-5
./bin/build-fpm.sh Dockerfile-7 fpm-7
