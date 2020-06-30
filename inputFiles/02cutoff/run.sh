#!/bin/bash

sys='qa'
for ecut in 30 40 50 60 70;
do
    target1=$ecut
    target2=`expr 12 \* $ecut`
    title=$sys'_ecut_'$target1
    cat $sys'_scf.in' | sed -e "s/target1/$target1/g" -e"s/target2/$target2/g" > $title.in
    mpirun ~/mpibin/pw.x < $title.in | tee $title.out
done

