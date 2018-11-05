#!/bin/bash

docker build --squash --pull -f cli/Dockerfile-7.0 -t xigen/php:cli-7.0 .
docker build --squash --pull -f cli/Dockerfile-7.1 -t xigen/php:cli-7.1 .
docker build --squash --pull -f cli/Dockerfile-7.2 -t xigen/php:cli-7.2 -t xigen/php:cli-latest -t xigen/php:latest .
docker build --squash --pull -f cli/Dockerfile-7.3 -t xigen/php:cli-7.3 .

echo "Testing PHP 7.0 image"
docker run --rm xigen/php:cli-7.0 php -v
echo ""

echo "Testing PHP 7.1 image"
docker run --rm xigen/php:cli-7.1 php -v
echo ""

echo "Testing PHP 7.2 image"
docker run --rm xigen/php:cli-7.2 php -v
echo ""

echo "Testing PHP 7.3 image"
docker run --rm xigen/php:cli-7.3 php -v
echo ""
