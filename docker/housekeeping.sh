#!/bin/sh

cd /images/build

ARGS=`echo $1 | cut -d"-" -f1`

echo "Housekeeping files for $ARGS:"
ls -1tr /images/build | grep $ARGS | head -n -3

ls -1tr /images/build | grep $ARGS | head -n -3 | xargs -d '\n' rm -rf --