#!/bin/bash
PROJECT=${1:-app}
LOCATION=${2:-$PWD}
docker run -it \
    -v $LOCATION:/opt/project \
    rails-toolbox rails new --skip-bundle $PROJECT &&
rm -rf $LOCATION/.git
