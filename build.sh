#!/bin/bash

. $(dirname $0)/ppa-tools/include.sh

GIT_REPOSITORY_URL=https://github.com/netdata/netdata.git
LICENSE=gpl3
NAME=netdata

work $*
