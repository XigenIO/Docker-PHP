#!/bin/bash

tag=cli-${1}
build_debug_enable=1
source bin/utils.sh

build cli/Dockerfile-$1 ${tag} cli/
test ${tag}
