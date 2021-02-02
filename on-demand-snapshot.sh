#!/bin/sh

set -e

if [ "${DEBUG}" = 1 ]; then
    set -x
fi

if ! pgrep "rke2" > /dev/null 2>&1; then
    echo "error: RKE2 needs to be running to perform a snapshot"
    exit 1
fi

if [ -z $1 ]; then
    rke2 etcd-snapshot
else 
    rke2 etcd-snapshot --name="$1"
fi


exit 0
