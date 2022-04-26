#!/bin/sh

CMD=$1
shift
for arg do
    $CMD $arg -k 2,3 | diff -u --from-file ${arg}.eta.k23 - || exit 1
done
