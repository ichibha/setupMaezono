#!/bin/bash

for xc in pz pbe blyp pw91;
do
    for base in qa qb ca cb;
    do
	cat $base'_scf.in' | sed "s/XC_FUNC/$xc/g" > $base'_'$xc'_scf.in' 
	pw.x < $base'_'$xc'_scf.in' | tee $base'_'$xc'_scf.out'
    done
done
