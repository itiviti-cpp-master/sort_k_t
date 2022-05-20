#!/bin/sh

CMD=$1
shift
for arg do
    $CMD $arg -k 1 --field-separator=- | diff -u --from-file ${arg}.eta.k1field-separator- - || exit 1
done
