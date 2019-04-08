#!/bin/bash

source bin/utils.sh

#########################
#       CLI images      #
#########################
dr push xigen/php:cli-5
dr push xigen/php:cli-72
dr push xigen/php:cli-73
dr push xigen/php:cli-slim
dr push xigen/php:cli-composer
dr push xigen/php:cli-debug

dr tag xigen/php:cli-73 xigen/php:cli-7
dr tag xigen/php:cli-7 xigen/php:cli

#########################
#       FPM images      #
#########################
dr push xigen/php:fpm-5
dr push xigen/php:fpm-70
dr push xigen/php:fpm-72
dr push xigen/php:fpm-73

dr tag xigen/php:fpm-73 xigen/php:fpm-7
dr tag xigen/php:fpm-7 xigen/php:fpm
