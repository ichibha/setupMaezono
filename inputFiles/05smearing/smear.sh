#!/bin/bash
for target1 in gauss mp;
do
  for target2 in 0.05 0.02 0.01 0.005 0.002 0.001 0.0005 0.0002 0.0001;
   do
	base=$target1'_'$target2
	cat smear.in | sed -e "s#target1#$target1#g" \
           -e "s#target2#$target2#g" > $base.in 
	pw.x < $base.in | tee $base.o
   done
done
