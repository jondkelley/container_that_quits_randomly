#!/bin/bash
# file: entrypoint.sh

if [ -z ${SLEEPYTIME+x} ]; then
  SLEEPYTIME=0
fi
sleep $SLEEPYTIME

random_exitcode=$((1 + $RANDOM % 254))

if [ -z ${EXITCODE+x} ]; then
  EXITCODE=$random_exitcode
fi

echo "This container will exit with code $EXITCODE"
exit $EXITCODE