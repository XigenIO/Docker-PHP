#!/bin/bash

docker build --squash --pull -f cli/Dockerfile-7.0 -t xigen/php:cli-7.0 .
docker build --squash --pull -f cli/Dockerfile-7.1 -t xigen/php:cli-7.1 .
docker build --squash --pull -f cli/Dockerfile-7.2 -t xigen/php:cli-7.2 -t xigen/php:cli-latest -t xigen/php:latest .
docker build --squash --pull -f cli/Dockerfile-7.3 -t xigen/php:cli-7.3 .
