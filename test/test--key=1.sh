#!/bin/sh

CMD=$1
shift
for arg do
    $CMD $arg --key=1 | diff -u --from-file ${arg}.eta.key1 - || exit 1
done
