#!/bin/bash

FEWZHOME='/lscr/karlberg/FEWZ_3.1.b2'

cp $FEWZHOME/mainSrc/FEWZ.F $FEWZHOME/mainSrc/FEWZ.F.orig
cp $FEWZHOME/src/histogram.F $FEWZHOME/src/histogram.F.orig 

cp *.h $FEWZHOME/include/.
cp pwhg*F $FEWZHOME/src/.
cp boost.F $FEWZHOME/src/.
cp FEWZ.F $FEWZHOME/mainSrc/.
cp histogram.F $FEWZHOME/src/.

