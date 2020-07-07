#!/bin/bash

for ecut in 30 40 50 60 70;
do
    target1=$ecut
    target2=`expr 12 \* $ecut`
    title=ecut_$ecut
    cat ecut.in | sed -e "s/target1/$target1/g" -e"s/target2/$target2/g" > $title.in
    pw.x < $title.in | tee $title.out
done

