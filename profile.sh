#!/bin/sh

# Purpose:
#   Modifies the base directory path for added binaries
#   Loads: .creds/sqldocker.txt which should contain the the args for the docker instance
#          See the documentation in the github repo for more information about this.

SCRIPTPATH=$0
DIRLOC="$(dirname $SCRIPTPATH)"

# Binaries
export PATH="$DIRLOC/bin:$PATH"

