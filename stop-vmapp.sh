#!/bin/bash
#
# requires:
#  bash
#  nc
#
set -e

## variables

### environment variables

export LC_ALL=C
export LANG=C

### read-only variables

readonly abs_dirname=$(cd $(dirname $0) && pwd)

## main

# enable to set PATH at config.env
[[ -f ${abs_dirname}/config.env ]] && . ${abs_dirname}/config.env || :

echo quit | nc localhost ${monitor_port:-4444}
