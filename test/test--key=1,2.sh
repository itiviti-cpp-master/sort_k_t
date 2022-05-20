#!/bin/sh

CMD=$1
shift
for arg do
    $CMD $arg --key=1,2 | diff -u --from-file ${arg}.eta.key12 - || exit 1
done
