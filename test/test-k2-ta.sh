#!/bin/sh

CMD=$1
shift
for arg do
    $CMD $arg -k 2 -t a | diff -u --from-file ${arg}.eta.k2ta - || exit 1
done
