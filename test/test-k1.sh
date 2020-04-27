#!/bin/sh

CMD=$1
shift
for arg do
    $CMD $arg -k 1 | diff -u --from-file ${arg}.eta - || exit 1
done
