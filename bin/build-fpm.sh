#!/bin/bash

source bin/utils.sh

build fpm/$1 $2 fpm/
test
