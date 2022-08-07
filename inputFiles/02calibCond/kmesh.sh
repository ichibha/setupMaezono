#!/bin/bash
for kt in 1 2 3 4;
do
    title=kmesh_$kt
    cat kmesh.in | sed -e "s/target/$kt/g" > $title.in
    pw.x < $title.in | tee $title.out
done
