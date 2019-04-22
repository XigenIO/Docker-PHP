#!/bin/bash

export build_debug_enable=1;

source bin/utils.sh

build edge/cli/Dockerfile cli-edge edge/cli/
test cli-edge
