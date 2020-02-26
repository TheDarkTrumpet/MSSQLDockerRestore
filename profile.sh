#!/bin/sh

# Purpose:
#   Modifies the base directory path for added binaries
#   Loads: .creds/sqldocker.txt which should contain the the args for the docker instance
#          See the documentation in the github repo for more information about this.

CREDSLOC="$HOME/.creds/dockersql"
SCRIPTPATH=$0
DIRLOC="$(dirname $SCRIPTPATH)"

# Binaries
export PATH="$DIRLOC/bin:$PATH"

if test -f "$CREDSLOC"; then
    source "$CREDSLOC"
else
    echo "Warning: $CREDSLOC does not exist.  Please review the readme documentation on how to setup this file, and use the sample.  The scripts in this repo will not perform as expected otherwise"
fi
