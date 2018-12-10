#!/bin/bash

source bin/utils.sh

export image=$1
export file=$2

build fpm/$file $image fpm/
test
