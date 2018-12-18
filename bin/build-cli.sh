#!/bin/bash

source bin/utils.sh

build cli/$1 $2 cli/
test $2
