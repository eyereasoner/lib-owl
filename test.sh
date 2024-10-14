#!/bin/bash

lib=$1

shift 1

for f in "$@"; do
    ext="${f#*.}"
    echo -n $f
    if [[ "${ext}" == 'n3' ]]; then
        eye --nope --quiet --pass $lib $f lib-rdfs.n3 | grep ':is true' > /dev/null 2>&1 
        if [ $? -eq 0 ]; then
            echo " OK"
        else
            echo " FAILED"
        fi
    elif [[ "${ext}" == 'n3s' ]]; then
        eye --nope --quiet --no-bnode-relabeling  $lib $f lib-rdfs.n3s | grep ':is true' > /dev/null 2>&1 
        if [ $? -eq 0 ]; then
            echo " OK"
        else
            echo " FAILED"
        fi
    fi
done