#!/bin/bash
# No need to expose any port :)

travis lint .travis.yml

source ./env.sh
export GOSS_WAIT_OPTS="-r 90s -s 1s > /dev/null"
dgoss run -it \
  $DOCKER_IMAGE:dev-latest /bin/bash
