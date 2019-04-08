#!/bin/bash

source bin/utils.sh

#########################
#       CLI images      #
#########################
dr push xigen/php:cli-72
dr push xigen/php:cli-73
dr push xigen/php:cli-slim
dr push xigen/php:cli-composer
dr push xigen/php:cli-debug

#########################
#       FPM images      #
#########################
dr push xigen/php:fpm-70
dr push xigen/php:fpm-72
dr push xigen/php:fpm-73
